#!/bin/bash

a=0
b=1

echo "Enter the number n :"

read n

echo -n "Fibonacci series of $n is : $a $b "

for(( i=2;i<=n;i++ ))
do
    sum=$(( a+b ))
    echo -n "$sum "
    a=$b
    b=$sum

done
echo ''