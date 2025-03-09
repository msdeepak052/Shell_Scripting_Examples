#!/bin/bash

for i in {1..100}
do
    echo "Number $i"

done

# -------------------------------------

for ((i=1;i<=20;i++))
    do
        if (( i % 2 == 0 )); then

            echo "Even Number -- $i"
        fi
    done

# -------------------------------------

for ((i=1; i<=20; i++))
do
    if [ $((i % 2)) -eq 0 ]; then
        echo "Even Number -- $i"
    fi
done


