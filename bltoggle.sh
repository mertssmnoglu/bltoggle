#!/usr/bin/bash

function toggleBluetooth {
    if rfkill list bluetooth|grep -q 'yes$';then
        rfkill unblock bluetooth;
    else
        rfkill block bluetooth;
    fi
}
toggleBluetooth