#!/bin/bash

# Directory to back up (Change this to your target directory)
SOURCE_DIR="/mnt/c/Deepak/Devops/Linux/Scripts/Practise_Scripts/emptyfilecheck/"
SOURCE_DIR=${SOURCE_DIR%/}

echo "Source dir : $SOURCE_DIR"

# Backup storage location (Change as needed)
BACKUP_DIR="/home/docker/backups"

SOURCE_DIR_NAME=$(echo "$SOURCE_DIR" | awk -F'/' '{print $NF}')

echo "SOURCE_DIR_NAME : $SOURCE_DIR_NAME"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Generate timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Backup file name
BACKUP_FILE="$BACKUP_DIR/${SOURCE_DIR_NAME}_$TIMESTAMP.tar.gz"

echo "BACKUP_FILE : $BACKUP_FILE"

# Create the backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

# Verify if backup was created successfully
if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_FILE"
else
    echo "Backup failed!"
    exit 1
fi

# Optional: Delete backups older than 7 days
find "$BACKUP_DIR" -type f -name "backup_*.tar.gz" -mtime +7 -exec rm -f {} \;

# Completion message
echo "Old backups older than 7 days have been cleaned up."