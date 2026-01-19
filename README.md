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

```bash
waydroid
```
