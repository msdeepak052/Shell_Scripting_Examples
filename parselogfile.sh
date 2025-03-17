#!/bin/bash

logfile="/mnt/c/Deepak/Devops/Linux/Scripts/Practise_Scripts/server.log"
outputfile="parse_error.log"

if [[ ! -f "$logfile" ]]; then
    echo "File does not exist...Exiting"
    exit 1
fi

grep "ERROR" $logfile >> $outputfile
echo "ERROR lines from the file $logfile"
cat "$outputfile"
