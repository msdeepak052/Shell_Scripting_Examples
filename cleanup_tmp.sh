#!/bin/bash

# Directory to clean
TEMP_DIR="/tmp"
LOG_FILE="/var/log/tmp_cleanup.log"
DAYS_OLD=7

# Check if the directory exists
if [ ! -d "$TEMP_DIR" ]; then
    echo "Error: Directory $TEMP_DIR not found!"
    exit 1
fi

# Find and delete files older than 7 days
echo "Cleaning up files older than $DAYS_OLD days in $TEMP_DIR..."
find "$TEMP_DIR" -type f -mtime +$DAYS_OLD -exec rm -f {} \; -print >> "$LOG_FILE"

# Print completion message
echo "Cleanup completed. Deleted files are logged in $LOG_FILE"
