#!/bin/bash

# Script Name:                  hey
# Author:                       Brittany Powell
# Date of latest revision:      11/01/2023
# Purpose:                      opschallenge07

# Create a script that uses lshw to display system information to the screen about the following components:
# CPU
    #Product
    #Vendor
    #Physical ID
    #Bus info
    #Width
#RAM
    #Description
    #Physical ID
    #Size
#Display adapter
    #Description
    #Product
    #Vendor
    #Physical ID
    #Bus info
    #Width
    #Clock
    #Capabilities
    #Configuration
    #Resources
#Network adapter
    #Description
    #Product
    #Vendor
    #Physical ID
    #Bus info
    #Logical name
    #Version
    #Serial
    #Size
    #Capacity
    #Width
    #Clock
    #Capabilities
    #Configuration
    #Resources
# used bard for help. I now understand how to tell my script what to do. 
# the model shown was simplistic and very easy to understand.
# lshw stands for 'list hardware'
# -c 'string'
# -E 'extended regexp'
# grep a Unix command used to search files for the occurrence of a string of characters that matches a specified pattern



# display system information
echo "system information"

#CPU INFORMATION
echo "CPU:"
    lshw -c cpu | grep -E 'name|vendor|physical id|width'

#RAM INFORMATION    
echo "Ram:"
    lshw -c ram | grep -E 'description|physical id|size'


# Display adapter information
echo "Display adapter:"
    lshw -c display adapter | grep -E 'description|product|vendor|physical id|bus info|width|clock|capabilities|configuration|resources'

# Network adapter information
echo "Network adapter:"
    lshw -c network adapter | grep -E 'description|product|vendor|physical|bus info|logical name|version|serial|size|capacity|width|clock|capabilities|configuration|resources'

 




done