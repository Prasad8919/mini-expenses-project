#!/bin/bash

USERID=$(id -u 0)

echo "Please enter DB password:"
read -s mysql_root_password

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

dnf install my sql -y &>>$LOGFILE
VALIDATE $? "installing my sql"

systemctl enable mysqld &>>$LOGFILE
VALIDATE $? "Enabling MySQL Server"

systemctl start mysqld &>>$LOGFILE
VALIDATE $? "Starting MySQL Server"

mysql -h 172.31.87.132 -uroot -p${mysql_root_password} -e 'show databases;' &>>$LOGFILE
if [ $? -ne 0 ]
then
    mysql_secure_installation --set-root-pass ${mysql_root_password} &>>$LOGFILE
    VALIDATE $? "MySQL Root password Setup"
else
    echo -e "MySQL Root password is already setup...$Y SKIPPING $N"
fi
