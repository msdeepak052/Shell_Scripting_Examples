#!/bin/bash

echo "Enter the dir in which we need to find the empty files"
read emptyfilesdir

find "$emptyfilesdir" -type f -empty 


if [[ $? -eq 0 ]]; then
    echo "Delete the empty files (y/n) :"
    read ans
    if [[ "$ans" = "y" ]]; then 
        echo "Deleting the empty files"
        find "$emptyfilesdir" -type f -empty -delete
    else
        echo "Okay, not deleting the files ..!"
    fi
else
    echo "No Empty files"
fi
