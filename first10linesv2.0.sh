#!/bin/bash

echo "Enter the filename : "

read filename

filepath=$( sudo find /opt -type f -name "$filename" 2>/dev/null | head -n 2 )

if [[ -n $filepath ]]; then
    echo "File found: $filepath"
    echo "First 10 lines of $filename"
    head -n 10 $filename

else
    echo "File not found"
fi

