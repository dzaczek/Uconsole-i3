#!/bin/bash

# Define the WireGuard interface
WG_INTERFACE="wg0"

# Define shield icons
ICON_UP="<span color='green'></span>"  # Shield (use your desired icon)
ICON_DOWN="<span color='red'></span>"  # Shield (use your desired icon)

# Check if the WireGuard interface is active
if ip link show dev "$WG_INTERFACE" &> /dev/null; then
    # Check if there are any established peer connections
    if [ "$(wg show "$WG_INTERFACE" endpoints | wc -l)" -gt 0 ]; then
        echo "WG: $ICON_UP Connected"
    else
        echo "WG: $ICON_DOWN No Peers"
    fi
else
    echo "WG: $ICON_DOWN Down"
fi

