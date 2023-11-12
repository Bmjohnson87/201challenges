#!/bin/bash

# Script Name:                  Arrays
# Author:                       Brittany Powell
# Date of latest revision:      RESUBMIT
# Purpose:                      create our directories

# resubmit
# Write a script that:
# Creates four directories: dir1, dir2, dir3, dir4 
# mkdir is make new directories


mkdir dir1
mkdir dir2
mkdir dir3
mkdir dir4

# Put the names of the four directories in an array

directories=("dir1" "dir2" "dir3" "dir4")

# References the array variable to create a new .txt file in each directory
for dir in "${directories[@]}"; do
    touch "$dir/file.txt"
done


