#!bin/bash

NUM=$1

increase(){
    NUM=$((NUM + 1))
    return
}
 
increase
echo "$NUM"