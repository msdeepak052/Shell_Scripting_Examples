#!/bin/bash

# Ask the user for the directory path
echo "Enter the path of the directory where files need to be counted:"
read dirpath

# Check if the directory exists
if [ -d "$dirpath" ]; then
    file_count=$(ls "$dirpath" | wc -l)
    echo "Number of files in the directory: $file_count"
else
    echo "Error: Directory does not exist!"
fi

# ---------------------------------------------------------------

# Ask the user for the directory path
echo "Enter the path of the directory where files need to be counted:"
read dirpath

# Check if the directory exists
if [ -d "$dirpath" ]; then
    file_count=$(find "$dirpath" -maxdepth 1 -type f | wc -l)
    echo "Number of files in the directory: $file_count"
else
    echo "Error: Directory does not exist!"
fi
