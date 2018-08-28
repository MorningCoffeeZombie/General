exit
####################
## PPPPPP	 SSSSS
## P	 P	S
## PPPPPP	 SSSSS
## P 	 		  S
## P 		 SSSSS
####################
# WINDOWS SERVER POWERSHELL
# .ps1


# Single line comment
#my comment

# Multiline comment
<#
my comment
#>

# Prefix to call an environmental variable
$Env:
#ex: $Env:SystemRoot
#ex: $env:USERPROFILE

# How to find what version of PowerShell you are running:
$psversiontable

# Tail files in PS
Get-Content ./log.log -Wait -Tail 10

# How to create a logfile/send text to file
$logFile = "globalCompressor.log"
Add-Content $logFile -value "Log file has been established!"

# How to get the name of the currently running script (this file). This will include the file extension.
$MyInvocation.MyCommand.Name

# Show date in 1460 in the past and another 1460 days in the future. This is usefull for creating cut-off dates:
(Get-Date).AddDays(-1460)
(Get-Date).AddDays(1460)
