# how to print by highest CPU (top)
Get-Process | sort-object CPU -Descending

# how to print by highest PID (top)
Get-Process | Sort-Object ID -Descending

# how to print by Top 5 WS
Get-Process | Sort-Object WS | Select-Object -First 5

# how to start a brower to open a website
Start-Process msedge.exe  https://owasp.org/www-project-top-ten/

# how to make a loop that opens notepad 10x
for ($g = 1; $g -le 10; $g++) {Start-Process notepad.exe}

# close all notepads that were just opened
Stop-Process -Name notepad

# how to kill a process by its PID
Stop-Process -ID 1324