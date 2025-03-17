#!/bin/bash

# Check if a website URL is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <website_url>"
    exit 1
fi

WEBSITE=$1
LOG_FILE="ping_log.txt"

# Ping the website (send 2 packets, wait 2 seconds)
ping -c 2 -W 2 "$WEBSITE" > /dev/null 2>&1

# Check the exit status of ping command
if [ $? -eq 0 ]; then
    echo "$(date) - SUCCESS: $WEBSITE is reachable." | tee -a "$LOG_FILE"
else
    echo "$(date) - ERROR: $WEBSITE is NOT reachable!" | tee -a "$LOG_FILE"
fi
