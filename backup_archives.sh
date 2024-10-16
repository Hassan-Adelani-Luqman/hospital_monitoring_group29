#!/bin/bash

# Define the directory for archived logs
group_number=1  # Replace this with your group number
archive_dir="archived_logs_group${group_number}"

# Create the directory if it doesn't exist
if [ ! -d "$archive_dir" ]; then
    mkdir "$archive_dir"
fi

# Move the archived log files to the designated directory
mv heart_rate_log.txt_* $archive_dir/

# Define the remote backup server details
remote_host="your_sandbox_host"  # Replace with actual sandbox host
remote_user="your_sandbox_username"  # Replace with actual sandbox username
remote_dir="/home/"

# Perform the backup using scp
scp $archive_dir/* $remote_user@$remote_host:$remote_dir

# Verify if the transfer was successful
if [ $? -eq 0 ]; then
    echo "Backup successful."
else
    echo "Backup failed."
fi
