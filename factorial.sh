#!/bin/bash

echo "Enter the number for the factorial to be found :"

read n
factorial=1

for (( i=1;i<=n;i++ ))
do
    factorial=$(( factorial*i ))
done

echo "The factorial of $n is: $factorial"