#!/bin/bash

ID=$(id-u)
VALIDATE(){
    if [ $1 -ne 0]
    then
    echo -e "$2 ......FAILED......."
    else
    echo -e "$2 ......SUCCESS......."
}

if [ $ID -ne 0]
then 
echo  -e "ERROR: PLease run this script with user access"
else
echo "you are a root user"
fi

for package in $@
do
 yum list installed package 
    if [ $? -ne 0 ]
    then
        yum install $package -y
        VALIDATE $? "Installation of $package"
    else 
    echo  -e "$package is already installed .... skipping"
    fi
done

