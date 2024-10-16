#!/bin/bash

# Prompt for device name
echo "Enter device name (e.g., Monitor_A): "
read device_name

# Log file
log_file="heart_rate_log.txt"

# Function to simulate heart rate and log the data
log_heart_rate() {
    while true; do
        timestamp=$(date +"%Y-%m-%d %H:%M:%S")
        heart_rate=$((RANDOM % 40 + 60))  # Random heart rate between 60 and 100
        echo "$timestamp $device_name $heart_rate" >> $log_file
        sleep 1  # Log every second
    done
}

# Start logging heart rate in the background
log_heart_rate &
pid=$!

# Display the process ID of the background process
echo "Heart rate monitoring running in the background. Process ID: $pid"

