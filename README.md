# hospital_monitoring_group29
this is the summative task for group 29
Installation
Step 1: Clone the Repository
Start by cloning the repository to your local machine. Open a terminal and run:
bash
Copy code
git clone <your-repo-url>
cd <your-repo-directory>

Step 2: Set Up Directories
Once inside the project directory, ensure the necessary directories are in place. Specifically, the script backup_archives.sh will expect a directory to store the archived logs.
Create this directory manually or let the script create it for you when it runs:
bash
Copy code
mkdir -p archived_logs_group29

Replace group29 with your actual group number.
Step 3: Ensure the Scripts Are Executable
Before running the scripts, make sure they have executable permissions:
bash
Copy code
chmod +x archive_log.sh backup_archives.sh

Step 4: Update Remote Server Credentials (For Backup)
You’ll need to update the backup_archives.sh script with your remote server credentials. Open the script and update the following placeholders with your details:
bash
Copy code
remote_host="<YOUR_REMOTE_HOST>"
remote_user="<YOUR_REMOTE_USER>"
remote_directory="/home/<YOUR_REMOTE_DIRECTORY>"
