#!/bin/bash

###################################################################################
#Author: Ragul.P
#Description:This script prints the permission of a  file
#Version: V1.0.1
###################################################################################

read -p "Enter the file Name: "  FILE

#Checking File Exist or not
if [ ! -f  $FILE ];
then
   echo "FILE : $FILE not exist in this Folder"
   exit 0
fi

output=$(ls -l "$FILE" | awk '{print $1}')

echo "Permissions of $FILE is: $output"


