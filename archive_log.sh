#!/bin/bash

# Define the log file and its new name with timestamp
log_file="heart_rate_log.txt"
timestamp=$(date +"%Y%m%d_%H%M%S")
archived_log_file="${log_file}_${timestamp}"

# Rename the log file to archive it
if [ -f $log_file ]; then
    mv $log_file $archived_log_file
    echo "Archived log file as: $archived_log_file"
else
    echo "No log file found to archive."
fi