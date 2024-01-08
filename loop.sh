#!/bin/bash

# Script Name:                  Loops
# Author:                     Brittany Powell

# Purpose:                      Ops Challenge 05

# For loops 
# Main


echo $var

ps aux 
echo "Enter your PID number"
read PID
until [ Ctrl + C ]
do 
    
    ps aux
done
echo done
kill -9 $PID
# End
