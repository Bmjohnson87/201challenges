#!/bin/bash

# Script Name:                  Conditions
# Author:                       Brittany Powell
# Date of latest revision:      10/31/2023
# Purpose:                      lab 06
#Create a script that detects if a file or directory exists, then creates it if it does not exist.
#Your script must use at least one array, one loop, and one conditional.

# Declare an array
files=("file23.txt" "file33.txt" "file1.txt" "file03.txt")

# For Loop that does a check for each file in my array
for file in "${files[@]}"; do

    # condition: check if files exist
    # if files exist, print a statement that file exists
    if [ -e "$file" ]; then
    echo "$file exists."

   #if files doesn't exist; print file doesn't exist
   # create file if it doesnt exist
    else
    touch "$file"
    echo "file created: $file"

    fi 

done 

 



   




