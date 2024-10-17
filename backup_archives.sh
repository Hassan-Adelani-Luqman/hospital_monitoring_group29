#!/usr/bin/env bash


archive_dir="archived_logs_group29"


if [ ! -d "$archive_dir" ]; then
    echo "The directory $archive_dir does not exist. Creating it now..."
    mkdir -p "$archive_dir"
else
    echo "The directory $archive_dir already exists."
fi


mv heart_rate_log.txt_* "$archive_dir/" 2>/dev/null


if [ $? -ne 0 ]; then
    echo "No archived log files were found to move."
    exit 1
fi


remote_host="080cc2d7ecdc.601a9382.alu-cod.online"
remote_user="080cc2d7ecdc"
remote_directory="/home/"


scp "$archive_dir/*" "$remote_user@$remote_host:$remote_directory"


if [ $? -eq 0 ]; then
    echo "Backup to remote server was successful."
else
    echo "Backup to remote server failed."
    exit 1
fi

