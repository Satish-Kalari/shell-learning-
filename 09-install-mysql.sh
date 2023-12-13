#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "Run this with root acess"
    exit 1 # value should be other than 0
else
    echo "You are root user"
fi # fi indicates end of if condition

yum install mysqul -y

if [ $? -eq 0 ]
then
    echo "Sucuessfully installed"
else
    echo "Error: Failed to install"