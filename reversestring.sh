#!/bin/bash

# Function to reverse a string
reverse_string() {
    local str="$1"
    echo "$str" | rev
}

# Get user input
read -p "Enter a string: " user_input
reversed_string=$(reverse_string "$user_input")

echo "Reversed string: $reversed_string"