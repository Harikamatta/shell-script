#!/bin/bash

ID=$(id -u)

VALIDATE(){
        if [ $1 -ne 0 ]
    then 
        echo "Error: : $2.. FAILED"
        exit 1
    else
        echo "$2.. SUCCESS"
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

VALIDATE $?  "installing MYSQL"

yum install git -y

VALIDATE $?  "installing GIT"
