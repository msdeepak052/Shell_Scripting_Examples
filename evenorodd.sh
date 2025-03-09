#!/bin/bash

echo "Give the number which you want to check is even or odd ?"

read n

if (( $n % 2 == 0 )); then
    echo "$n is an even number"
else
    echo "$n is an odd number"
fi