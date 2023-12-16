#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(DATE $F-$H-$M-$S)
R="\e[31m"
G="e[32m"
Y="e[33m"
N="e[0m"
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo"script started executing at $TIMESTAMP" &>>LOGFILE

VALIDATE(){
        if [ $1 -ne 0 ]
    then 
        echo "Error: : $2.. $RFAILED $N"
        exit 1
    else
        echo "$2.. $GSUCCESS $N"
    fi    
}

if [ $ID -ne 0 ]
then
    echo "Error: : Please run the script with root access"
    exit 1 #you can give other then 0
else 
    echo "$Y Your root user $N"
fi #reverse of if indicationg condition

yum install mysql -y

VALIDATE $?  "installing MYSQL"

yum install git -y

VALIDATE $?  "installing GIT"
