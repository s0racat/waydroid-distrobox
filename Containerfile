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

RUN passwd -d root
# Cleanup
RUN rm -rf /tmp/*
