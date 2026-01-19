# waydroid-distrobox

[![build-waydroid-distrobox](https://github.com/s0racat/waydroid-distrobox/actions/workflows/build.yml/badge.svg)](https://github.com/s0racat/waydroid-distrobox/actions/workflows/build.yml) 

[Fedora-distrobox](https://github.com/ublue-os/fedora-distrobox) images with Waydroid and dependencies included.


```bash
distrobox create --root \
  --image ghcr.io/s0racat/waydroid-toolbox:latest \
  --init \
  --unshare-all \
  --volume /lib/modules:/lib/modules:ro \
  --name waydroid

distrobox enter --root waydroid
```

## setup

```bash
sudo waydroid init -s VANILLA|GAPPS -c 'https://ota.waydro.id/system' -v 'https://ota.waydro.id/vendor'
waydroid show-full-ui
```

## waydroid_script

```bash
sudo venv/bin/python3 /waydroid_script/main.py
```
