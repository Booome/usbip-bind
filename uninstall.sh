#!/bin/sh

systemctl -q stop usbipd.service
systemctl -q disable usbipd.service
rm -f /etc/systemd/system/usbipd.service

systemctl -q stop usbip-bind.service
systemctl -q disable usbip-bind.service
rm -f /etc/systemd/system/usbip-bind.service

rm -f /etc/usbip/usbip-bind.sh
rm -f /etc/usbip/usbip-unbind.sh

