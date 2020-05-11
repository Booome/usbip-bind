#!/bin/sh

cp -f usbipd.service /etc/systemd/system/
cp -f usbip-bind.service /etc/systemd/system/

mkdir -p /etc/usbip/
cp usbip-bind.sh /etc/usbip/
cp usbip-unbind.sh /etc/usbip/

systemctl daemon-reload
