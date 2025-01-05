#!/bin/bash

<<Description
  This script is used to check whether the file and Folder exists or not
Description

echo  "Enter the file Name"
read FileName


if [ -f $FileName ];
then
  echo  "File ${FileName} Exists"
else
  echo  "File Not exists"
fi







