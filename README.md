# Hospital Monitoring Group-29 Project


This project consists of three shell scripts designed to monitor heart rate data, archive log files, and back them up to a remote server. It includes the following tasks:

1. **Task 1**: Heart rate monitoring script (`heart_rate_monitor.sh`)
2. **Task 2**: Log archival script (`archive_log.sh`)
3. **Task 3**: Archival and backup script (`backup_archives.sh`)

Each script performs specific functions and works together to create an automated system for monitoring, archiving, and backing up heart rate logs.

## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Setup](#setup)
  

## Project Overview

### Task 1: Heart Rate Monitoring Script (`heart_rate_monitor.sh`)

This script simulates heart rate monitoring and logs the data into `heart_rate_log.txt` every second. The log includes the timestamp, device name, and a randomly generated heart rate.

### Task 2: Log Archival Script (`archive_log.sh`)

This script archives the `heart_rate_log.txt` file by renaming it with a timestamp (format: `YYYYMMDD_HHMMSS`) and storing the archived file in the local directory.

### Task 3: Archival and Backup Script (`backup_archives.sh`)

This script moves the archived log files to a designated directory and then backs them up to a remote server using the `scp` command over SSH.

## Features

- **Heart Rate Monitoring**: Logs simulated heart rate data every second.
- **Log Archival**: Automatically archives heart rate log files by renaming them with timestamps.
- **Remote Backup**: Transfers archived log files to a remote server for backup.
- **Error Handling**: Basic error handling is included for cases like missing files or failed backups.

## Setup

### Prerequisites

Ensure the following are installed on your machine:

- **Bash Shell**: Typically pre-installed on Linux/macOS systems.
- **SSH**: Needed to connect to the remote server for backups.
- **scp**: Secure copy protocol for transferring files between the local machine and the remote server.

### Steps to Set Up Locally

1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd hospital_monitoring_group$

The group consists of 6 members. We did two sessions to finish this project. However, one of the members could not make it due to health issues.
