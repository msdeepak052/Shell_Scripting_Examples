#!/bin/bash

FILE="/mnt/d/Study/Linux/shell Scripting/Scripts/Practise_Scripts/HelloWorld.sh"

if [ -e "$FILE" ]; then
    echo "File exists."
else
    echo "File does not exist."
fi
