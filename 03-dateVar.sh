#!/bin/bash

DATE=$(date)
list=$(ls -l)
listall=$(ls -a)
exitstatus=$(sudo useradd saiteja)

echo "Date is : ${DATE}"

echo "Date is : $DATE"

echo "listind directory: $list"

echo "listind all files including hidden directory: $listall"



