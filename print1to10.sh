#!/bin/bash

<<Description
  To Print Numbers from Certain range based on User Input using ForLoop
Description

echo "Enter Starting Number"
read a
echo "Enter Ending Number"
read b

for (( i=$a ; i<=$b ; i++ ))
do {
   echo "$i"
}
done
