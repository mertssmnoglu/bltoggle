#!/usr/bin/bash
turnedOnText='\033[1mBluetooth\033[0;34m \033[1mturned on\033[0m'
turnedOffText='\033[1mBluetooth\033[0;34m \033[1mturned off\033[0m'
function toggleBluetooth {
    if rfkill list bluetooth|grep -q 'yes$';then
        rfkill unblock bluetooth;
        echo -e $turnedOnText
    else
        rfkill block bluetooth;
        echo -e $turnedOffText
    fi
}
toggleBluetooth