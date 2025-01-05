#!/bin/bash
#Write a shell script that starts and stops EC2 instance based on Schedule

if [ $# -ne 1 ]; then
   echo "Error:Argument is not passed.It should be Start or Stop"
   exit 1
fi

REGION=us-east-1
INSTANCE_ID=rrtktktk
ACTION=$1

Start_instance() 
{
   echo "Initializing starting the instance"
   aws ec2 start-instances --instance-ids "$INSTANCE_ID" --region "$REGION"
   if [ $? -eq 0 ]; then
      echo "Instance started Successfully"
   else
      echo "Start Instance Failed"
   fi
}

Stop_instance() 
{ 
   echo "Initializing stoping the instance"
   aws ec2 stop-instances --instance-ids "$INSTANCE_ID" --region "$REGION"
   if [ $? -eq 0 ]; then
      echo "Instance stopped Successfully"
   else
      echo "Stop Instance Failed"
   fi
}

if [ "$ACTION" == "Start" ]; then
    Start_instance

elif [ "$ACTION" == "Stop" ]; then
    Stop_instance
else
    echo "Error: Action should be either Start or Stop"
    exit 2
fi


