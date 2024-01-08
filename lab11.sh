# Enable File and Printer Sharing
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes

# Allow ICMP traffic (ping)
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow

# Enable Remote Management
Enable-PSRemoting -Force
Set-Item wsman:\localhost\client\trustedhosts *

# Remove bloatware (replace with specific app names as needed)
Get-AppxPackage *CandyCrush* | Remove-AppxPackage
Get-AppxPackage *3DBuilder* | Remove-AppxPackage
# ... add more bloatware app names as needed

# Enable Hyper-V

Enable-WindowsOptionalFeature
 
-Online
 
-FeatureName Microsoft-Hyper-V
 
-All


# Disable SMBv1
