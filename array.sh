#!/bin/bash

# Script Name:                  Arrays
# Author:                       Brittany Powell
# Date of latest revision:      10/29/2023
# Purpose:                      create our directories


# mkdir dir1 dir2 dir3 dir4

# Define Array
path=(dir1 dir2 dir3 dir4)

# Print out all dir
echo ${path[*]}
    
for ((i=0; i<${#dirs[0]}; i++)); do
  touch "${dirs[i]}/scriptfile.txt"
done


# End