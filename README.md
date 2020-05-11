# usbip-bind

## Quick Start

before install
* install usbip-utils (package name usbip)
* modprobe **usbip-core usbip-host** or make them auto probe on startup, add to /etc/modules

install
```bash
bash install.sh

systemctl enable usbipd
systemctl start usbipd

# Edit /etc/usbip/usbip-bind.sh, add your grep-list
systemctl enable usbip-bind
systemctl start usbip-bind
```

uninstall
```bash
bash uninstal.sh
```

