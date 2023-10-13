#!/bin/bash

# Icons
ICON_UP=""
ICON_DOWN=""

# Check if WireGuard interface wg0 is up
if ip link show wg0 &> /dev/null; then
    # If wg0 is up, display a green icon
    echo  $ICON_UP
    echo 
    echo \#008000
#else
#    # If wg0 is down, display a gray icon
#    echo  $ICON_DOWN
fi

