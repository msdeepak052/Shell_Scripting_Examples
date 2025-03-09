#!/bin/bash

# Get the current date and time
todayDate=$(date | awk '{print $1, $2, $3}')
todayTime=$(date | awk '{print $4, $5}')

# Output the results
echo "Current date is $todayDate"
echo "Current time is $todayTime"