#! /bin/bash

#Basic script to take a number from the user and calculate the sum of all numbers from 1 up to and including that number

echo "Choose the number:"
read n
if [[ $n -gt 0 ]]
then
    sum=0
    for (( i=0; i<=$n; i++ ))
    do 
        sum=$((sum + i))
    done
    echo "The sum of numbers from 1 to $n is: $sum"
else 
    echo "Please enter a positive number."
fi