#!/bin/bash

#Write a shell script that accepts a directory as an argument and creates a backup of the directory. 
#The backup should be compressed into a .tar.gz file, and the backup filename should be timestamped. If the directory doesn't exist, print an error message


#check if the directory name is provided

if [ $# -ne 1 ]; then
   echo "Directory Name not provided"
   exit 1
fi

dir=$1

#check if the provided directory already exists

if [ ! -d $dir ]; then
    echo "Directory not exists"
    exit 2
fi

# Get the current timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")

backup_file_name="Backup_${timestamp}.tar.gz"

tar -czf "$backup_file_name" "$dir"

#check zipping was successful or not

if [ $? -ne 0 ]; then
   echo "Zipping Failure"
   exit 3
else
   echo "Backup Successful"
fi
