#!/bin/bash

echo "Script name: $0"
echo "First argument: $1"
echo "Number of arguments: $#"
echo "All arguments: $@"
echo "Process ID: $"
echo "Last command exit status: $?"

# Example command
ls /nonexistent_directory
echo "Last command exit status: $?"
