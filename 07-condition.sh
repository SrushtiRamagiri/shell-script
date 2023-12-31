#!bin/bash

NUM=$1

if [ $NUM -gt 100 ]
then
    echo "$NUM is greater than 100"
else 
    echo "$NUM is not greater than 100"
fi