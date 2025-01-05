#!/bin/bash
#Check a script that particular service is running. If not restart the searvice and log the action

Log_File=/home/ragul/shellScripting/Monitoring.log

if [ $# -ne 1 ]; then
     echo  "$(date):Service Name Not Provided.Please Provide Valid Service Name"  >> $Log_File
     exit 1
fi

if systemctl is-active --quiet "$SERVICE_NAME"; then
   echo "$(date):Service $1 is up and running"  >> $Log_File
else
   echo "$(date):Service $1 is not running.Trying to Restart"  >> $Log_File
  
   systemctl restart $1
   
   if [ $? -eq 0 ]; then
      echo "$(date):Restart Successful" >> $Log_File
   else
      echo "$(date):Restart UnSuccessful" >> $Log_File
   fi
fi
