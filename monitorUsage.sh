#!/bin/bash

threshold=80

usage=$(df -kh /mnt/c/ | awk 'NR==2 {print $5}' | sed 's/%//g')

send_alert (){
    echo " Warning - Disk Space has exceeded $threshold and the current usage is $usage "
    echo "$date -- Disk Space has exceeded -- $usage" >> log_usage.txt

    # Optional: Send an email alert (Requires 'mail' command to be installed)
    # echo "Disk usage is critical: ${USAGE}%" | mail -s "Disk Space Alert" admin@example.com
}

if [[ "$usage" -ge "$threshold" ]]; then
    send_alert
else    
    echo "Disk Space is normal : $usage %"
fi