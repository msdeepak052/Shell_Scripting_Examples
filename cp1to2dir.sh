#!/bin/bash

# Prompt for source directory
echo "Enter the source directory:"
read src

# Prompt for destination directory
echo "Enter the destination directory:"
read dest

# Check if source directory exists
if [[ ! -d "$src" ]]; then
    echo "Error: Source directory does not exist!"
    exit 1
fi

# Check if destination directory exists, if not, create it
if [[ ! -d "$dest" ]]; then
    echo "Destination directory does not exist. Creating it..."
    mkdir -p "$dest"
fi

# Copy all .txt files from source to destination
cp -v "$src"/*.txt "$dest" 2>/dev/null

# Check if any .txt files were copied
if [[ $? -eq 0 ]]; then
    echo "All .txt files have been copied successfully from $src to $dest."
else
    echo "No .txt files found in $src or an error occurred."
fi
