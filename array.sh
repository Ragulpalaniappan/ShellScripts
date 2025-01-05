#!/bin/bash

<<Description
  This Script is used to enhance knowlege on working with arrays
Description

#Creation of Array

Array=("apple" "banana" "Mango")


#Add a new element in array

Array+=("newElement")
#Print Array elements
echo "Array elements"

for Fruits in "${Array[@]}"
do 
{
 echo "$Fruits"
}
done
