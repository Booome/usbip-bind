#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin

PROCESS_LIST=$(ps -aux | grep 'usbip-bind.sh' | grep -v 'grep' | awk -F' ' '{print $2}')
[ -z "$PROCESS_LIST" ] || kill "$PROCESS_LIST"

ID_LIST=$(usbip list -p -l | cut -d'#' -f1 | cut -d'=' -f2)
for id in $ID_LIST; do
    usbip unbind -b $id 2>/dev/null
done

