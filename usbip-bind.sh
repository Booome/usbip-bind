#!/bin/bash

GREP_LIST=(
    # 10c4:ea60
)

PATH=/bin:/sbin:/usr/bin/:/usr/sbin

while :; do
    for str in ${GREP_LIST[@]}; do
        ID_LIST=$(usbip list -p -l | grep ${str} | cut -d'#' -f1 | cut -d'=' -f2)
        for id in $ID_LIST; do
            usbip bind -b $id 2>/dev/null
        done
    done
    sleep 3
done

