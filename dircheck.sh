#!/bin/bash

echo "Enter the path to be checked"

read path

if [[ -d "$path" ]]; then
     echo "Directory - $path exists"
else
    echo "Creating the directory -$path"
    mkdir -p $path
fi