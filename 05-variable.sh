#!/bin/bash

echo "Please enter your username : :"

read -s USERNAME #I am printing just for validation, you should not print username and password in scripts

echo "Username is : $USERNAME"


echo "Please enter your password : :"
read -s PASSWORD

echo "Password is: $PASSWORD"