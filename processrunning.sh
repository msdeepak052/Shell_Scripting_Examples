#!/bin/bash

# Define the process name
echo "Enter the PROCESS to be checked :"
read process
PROCESS_NAME="$process"  
echo "Process : $PROCESS_NAME"
set -x 
LOG_FILE="/var/log/process_monitor.log"

# Check if the process is running
if pgrep -x "$PROCESS_NAME" > /dev/null; then
    echo "$(date) - $PROCESS_NAME is running." >> "$LOG_FILE"
else
    echo "$(date) - $PROCESS_NAME is NOT running. Restarting..." >> "$LOG_FILE"
    
    # Restart the process using systemctl (for services)
    sudo systemctl restart "$PROCESS_NAME"

    # Alternative: If it's not a systemd service, use nohup to restart manually
    # nohup /path/to/$PROCESS_NAME > /dev/null 2>&1 &
fi

set +x

