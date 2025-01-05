#!/bin/bash

#Write a shell script to find and delete all the files in the directory that are more than 100MB

if [ $# -ne 1 ];then
     echo  "Directory name not provided"
     exit 1
fi

if [ ! -d "$1" ];then
     echo  "Directory "$1" not exists"
     exit 1
fi

echo "List of Files that are older than 30 days"
echo $(find $1 -type f -mtime +30)


find $1 -size 100M -exec rm -f {} \;

if [ $? -ne 0 ]; then
   echo "Files deletion is unsuccessful"
   exit 2
else 
   echo "File deletion is successful"
fi
