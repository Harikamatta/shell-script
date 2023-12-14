#!/bin/bash

ID=$(id -u)

VALIDATE(){
        if [ $? -ne 0 ]
    then 
        echo "Error: : Installing failed"
    else
        echo "Installing is success"
    fi    
}

if [ $ID -ne 0 ]
then
    echo "Error: : Please run the script with root access"
    exit 1 #you can give other then 0
else 
    echo "Your root user"
fi #reverse of if indicationg condition

yum install mysql -y
VALIDATE 

yum install git -y
