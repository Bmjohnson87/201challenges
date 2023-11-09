#!/usr/bin/bash

# telling the user to enter a domain name
echo "Please type in a domain"
# read the user input and put it the domain variable
read $domain
# commands to be used by the script
#  whois|dig|host|nslookup

dns-info() {
    whois $domain
    dig $domain
    host $domain
    nslookup $domain
}


#

# call the function
dns-info > dns_info.txt
