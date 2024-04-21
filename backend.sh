#!/bin/bash

USERID=$ (id -u )

if [ $USERID -ne 0 ]
then
   echo "please run the scrpit with root user."
else
   echo "you are the super user"
fi

VALIDATE (){
    if [ $1 -ne 0 ]
    then
      echo -e "$2..$R FAILURE $N"
      exit 1
    else
      echo -e "$2..$G SUCCESS $N"
    fi       
}


