#!/bin/bash

# Script Name:                  Login History
# Author:                       Brittany Powell
# Date of latest revision:      10/29/2023
# Purpose:                      opchallenge


# Declaration of functions

# Basic Function 
print_login_history  () {
    last | head -3 
    echo "this is login history"
}


# Main
print_login_history
print_login_history
print_login_history


# End