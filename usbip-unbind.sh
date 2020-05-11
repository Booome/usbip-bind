#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin

kill $(ps -aux | grep 'usbip-bind.sh' | grep -v 'grep' | awk -F' ' '{print $2}')

ID_LIST=$(usbip list -p -l | cut -d'#' -f1 | cut -d'=' -f2)
for id in $ID_LIST; do
    usbip unbind -b $id 2>/dev/null
done

