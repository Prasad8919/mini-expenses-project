#!/bin/bash

USERID=$(id -u)


if [ $USERID -ne 0 ]
  print "please run this script with root access"
else
  print "your are the super user"
fi 

