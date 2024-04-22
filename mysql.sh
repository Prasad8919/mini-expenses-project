#!/bin/bash

USERID=$(id -u)

echo "please enter the DB password"
read -s mysql_root_password

if [ $USERID -ne 0]
then
   echo "please run this script as a root user"
else
   echo "you are the super user"
   exit 1
fi 

