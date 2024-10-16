#!/usr/bin/env bash
mkdir archived_logs_group30
mv heart_rate_log.txt_* archived_logs_group30/
scp -r archived_logs_group30/ d35d089e5e53@d35d089e5e53.7b3ea1d9.alu-cod.online:/home/