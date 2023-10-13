#!/bin/bash

# Get the CPU temperature
cpu_temp_milli=$(cat /sys/class/thermal/thermal_zone0/temp)

# Convert to degrees Celsius
cpu_temp=$(awk -v temp="$cpu_temp_milli" 'BEGIN {printf "%.1f", temp/1000}')

# Output the temperature
echo "$cpu_temp"
