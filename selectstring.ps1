# Write a Powershell script that returns the IPv4 address of the computer.
# Create a local file called network_report.txt that holds the contents of an ipconfig /all command
ipconfig /all >network_report.txt

# To see if document has been created
notepad network_report.txt

# Use Select-String to search network_report.txt and return only the IP version 4 address.
Select-String -Path "network_report.txt" -Pattern IPv4

# Remove the network_report.txt when you are finished searching it.
Remove_Item -Path "network_report.txt"

# Test to see if network_report.txt has been removed
notepad network_report.txt
