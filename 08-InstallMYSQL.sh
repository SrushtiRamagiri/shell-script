#!bin/bash

ID = $(id -u)

If [ $ID -ne 0]
then
    echo "Error : run this script as root user"
    exit 1
else 
    echo "You are root user"
fi
yum install mysql -y

if[ $? -ne 0] # validate weater mysql installed successfully or not
then
    echo "MySQL INstallation failed"
else
    echo "MySQL INstallation success"
fi