# waydroid-distrobox

[![build-waydroid-distrobox-fedora](https://github.com/s0racat/waydroid-distrobox/actions/workflows/fedora-build.yml/badge.svg)](https://github.com/s0racat/waydroid-distrobox/actions/workflows/fedora-build.yml) 

[![build-waydroid-distrobox-debian](https://github.com/s0racat/waydroid-distrobox/actions/workflows/debian-build.yml/badge.svg)](https://github.com/s0racat/waydroid-distrobox/actions/workflows/debian-build.yml) 


```bash
distrobox create --root \
  --image ghcr.io/s0racat/waydroid-toolbox-d:latest \
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
cd /waydroid_script ; sudo venv/bin/python3 main.py
```

## weston

```bash
SHELL=/bin/bash weston
# launch terminal
```
