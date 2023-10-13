#!/bin/bash

# Define the path to the uevent file
UEVENT_FILE="/sys/class/power_supply/axp20x-battery/uevent"

# Check if the uevent file exists
if [ ! -f "$UEVENT_FILE" ]; then
    echo "Battery info not available"
    exit 1
fi

# Extract battery status and capacity from the uevent file
BATTERY_STATUS=$(grep -E "POWER_SUPPLY_STATUS" "$UEVENT_FILE" | cut -d'=' -f2)
BATTERY_CAPACITY=$(grep -E "POWER_SUPPLY_CAPACITY" "$UEVENT_FILE" | cut -d'=' -f2)

# Define font-awesome icons
ICON_CHARGING="\uf1e6"  # plug icon
ICON_DISCHARGING="\uf242"  # battery icon

# Check the battery status and output the appropriate icon and capacity
if [ "$BATTERY_STATUS" == "Charging" ]; then
    echo -e "$ICON_CHARGING $BATTERY_CAPACITY%"
elif [ "$BATTERY_STATUS" == "Discharging" ]; then
    echo -e "$ICON_DISCHARGING $BATTERY_CAPACITY%"
else
    echo "Battery: $BATTERY_CAPACITY% | $BATTERY_STATUS"
fi

