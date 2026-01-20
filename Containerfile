FROM ghcr.io/ublue-os/fedora-toolbox:latest AS waydroid-distrobox

COPY system_files /

# Install Waydroid & required packages
RUN dnf install -y \
        waydroid \
        weston \
        systemd-pam \
        iptables \
        dbus-x11 \
        kmod \
        curl \
        mutter \
        lzip \
        git \
        python \
        e2fsck

RUN chmod +x /usr/bin/waydroid-wrapper

# https://github.com/89luca89/distrobox/issues/1531#issuecomment-2561158209
RUN chmod 600 /etc/shadow

RUN git clone https://github.com/casualsnek/waydroid_script && \
  cd waydroid_script && \
  python3 -m venv venv && \
  venv/bin/pip install -r requirements.txt

# https://github.com/casualsnek/waydroid_script/issues/251
RUN sed 's/if result.stderr/if result.returncode != 0 and result.stderr/' /waydroid_script/tools/helper.py

# Cleanup
RUN rm -rf /tmp/*
