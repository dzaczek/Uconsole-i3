#!/bin/bash

# Run the command and capture the output

ICON_UP=""
ICON_DOWN=""




# Run the command and capture the output
output=$(sudo wg show wg0)

# Extract the last handshake time in the format "X seconds/minutes/hours ago"
last_handshake_string=$(echo "$output" | grep "latest handshake" | awk '{print $3, $4}')

# Function to extract seconds from the time string
extract_seconds() {
    local time_string="$1"
    local seconds=0

    if [[ $time_string == *"seconds"* ]]; then
        seconds=$(echo "$time_string" | awk '{print $1}')
    elif [[ $time_string == *"minutes"* ]]; then
        minutes=$(echo "$time_string" | awk '{print $1}')
        seconds=$((minutes * 60))
    elif [[ $time_string == *"hours"* ]]; then
        hours=$(echo "$time_string" | awk '{print $1}')
        seconds=$((hours * 3600))
    fi

    echo "$seconds"
}

# Get the number of seconds from the time string
last_handshake_seconds=$(extract_seconds "$last_handshake_string")

# Check if the last handshake is smaller than 1 minute (60 seconds)
if [ "$last_handshake_seconds" -lt 50 ]; then

    echo  $ICON_UP
    echo 
    echo \#008000


fi

