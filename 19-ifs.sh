#!/bin/bash

FILE=/etc/passwd

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $FILE ]
then
    echo -e "$R Directory $FILE Dose Not Exsist $N"
fi

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path
do
    echo "User Name:$G $username $N"
    echo "User Name: $user_id"
    echo "User Name: $user_fullname"

done < $FILE