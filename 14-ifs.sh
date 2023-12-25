#!/bin/bash
file=/etc/passwd
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ ! -d $file ] #! denots opposite
then
echo -e "$R Source directory: $file does not exist $N"
fi


while IFS=":" read -r username password user_id group_id  
do 
echo "username: $username"
echo "user ID: $user_id"
echo "group ID: $group_id"

done < $file