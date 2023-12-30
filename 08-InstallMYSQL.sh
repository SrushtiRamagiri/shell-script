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