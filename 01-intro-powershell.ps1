# Windows + R -> run type: powershell
# type "ise" in PowerShell -> integrated scripting engine
# Enable Windows + i from system settings taskbar to run PowerShell
# Use vscode + PoewrShell extensions https://code.visualstudio.com/

# List all commands available in PowerShell
Get-Command 		#(gcm)
# Use Placeholder / Wildcard  like "*""
gcm Get-Serv*

# Use properties of objects to filter with a dash "-"
Get-Command -Module Hyper-V

# Use alias and tab complete
Get-Alias gcm

# Get help for a specific command
Get-Help 		#(help)
# Get help and an example for specific command
Help get-service -examples 		#(help gcm –examples)

# Use pipe to put an output of a command as an input for the next
# Example of Get- | Do- | Out- methodology
Get-Service | Where-Object Status –eq “Stopped” | Set-Service $_ -Status Running | Out-File C:\scripts\services.txt


# Example of web
# Getting help
help Invoke-RestMethod                                                                                            
help Invoke-RestMethod examples
# Make use of variables
# Store URL in variable
$uri = 'https://jsonplaceholder.typicode.com'   
# Invoke                                                                  
Invoke-RestMethod -uri $uri -Method Get
Invoke-RestMethod -uri $uri/posts/1 -Method Get                                                                   
Invoke-RestMethod -uri $uri/posts/1 -Method Get -out JSON 
cat ./JSON


# Use windwos API
# Computersystem
Get-CimInstance Win32_Computersystem
# Get property name from an Win32_Computersytem object
$name = $(Get-CimInstance Win32_Computersystem).name

#Use remoting
# Test if computer can be invoked
Test-WsMan $name 
# Invoke a command
Invoke-Command -ComputerName $name -ScriptBlock { ipconfig } -credential mawarnek


# Format output
Get-Service | Format-list # (fl)
Get-Service | Fromat-table # (ft)
Get-Command | More
Get-Command | Out-Gridview

# list commands used
Get-History                                                                                                       
help history 

# to Output                                                                                                     
history | Out-File 'C:\Scripts\out.txt' 


