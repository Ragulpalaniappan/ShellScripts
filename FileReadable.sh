#!/bin/bash

####################################################################################################################

#Author: Ragul P
#Description : This script is to check whether the file is readable by the user or not

###################################################################################################################

read -p "Enter File name: " FILE


if [ -f "$FILE" ];
then
  echo "$FILE exists now checking the Readable property"

  if [ -r "$FILE" ];
  then
    echo "$FILE is readable"
  else
    echo "$FILE is not readable"
  fi

else
  echo " $FILE Not Exists"
fi
