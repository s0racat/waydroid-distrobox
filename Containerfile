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
        lzip

RUN chmod +x /usr/bin/waydroid-wrapper

# https://github.com/89luca89/distrobox/issues/1531#issuecomment-2561158209
RUN chmod 600 /etc/shadow

# Cleanup
RUN rm -rf /tmp/*
