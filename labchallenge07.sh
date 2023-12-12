#!/bin/bash

# Script Name:                  hey
# Author:                       Brittany Powell
# Date of latest revision:      11/01/2023
# Purpose:                      opschallenge07

# Create a script that uses lshw to display system information to the screen about the following components:
# lshw is for list hardware
# grep -E search for lines in text files that match a given pattern

# Define functions to retrieve and format information for each component
# Line 15 prints a header "** CPU Information: **\n" to the console
# Line 17 Uses lshw -C cpu to retrieve information about the CPU
# Line 17 Uses grep -E '^ *-|^ +-|vendor|physical id|bus info|width' to filter the output and show only relevant lines.
function get_cpu_info() {
  echo -e "\n** CPU Information: **\n"
  lshw -C cpu | grep -E '^ *-|^  +-|vendor|physical id|bus info|width'
}


function get_ram_info() {
  echo -e "\n** RAM Information: **\n"
  lshw -C memory | grep -E '^ *-|^  +-|description|physical id|size'
}

function get_display_adapter_info() {
  echo -e "\n** Display Adapter Information: **\n"
  lshw -C display | grep -E '^ *-|^  +-|description|product|vendor|physical id|bus info|width|clock|capabilities|configuration|resources'
}

function get_network_adapter_info() {
  echo -e "\n** Network Adapter Information: **\n"
  lshw -C network | grep -E '^ *-|^  +-|description|product|vendor|physical id|bus info|logical name|version|serial|size|capacity|width|clock|capabilities|configuration|resources'
}

# Get computer name
computer_name=$(hostname)

# Get information for each component
# These lines call the previously defined functions and store their returned information in respective variables
cpu_info=$(get_cpu_info)
ram_info=$(get_ram_info)
display_adapter_info=$(get_display_adapter_info)
network_adapter_info=$(get_network_adapter_info)

# Print system information with clear headings
echo "** System Information for $computer_name **"

# CPU information
echo -e "\n** CPU Information: **\n"
echo "$cpu_info"

# RAM information
echo -e "\n** RAM Information: **\n"
echo "$ram_info"

# Display adapter information
echo -e "\n** Display Adapter Information: **\n"
echo "$display_adapter_info"

# Network adapter information
echo -e "\n** Network Adapter Information: **\n"
echo "$network_adapter_info"


