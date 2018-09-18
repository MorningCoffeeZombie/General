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
$logFile = ($MyInvocation.MyCommand.Name + ".log")
Add-Content $logFile -value "Log file has been established!"

# How to get the name of the currently running script (this file). This will include the file extension.
$MyInvocation.MyCommand.Name

# Location of the currently running script (this directory)
$PSScriptRoot
$thisDir = [System.IO.Path]::GetDirectoryName($myInvocation.MyCommand.Definition)

# Full path of the current script and its name (2 ways)
$thisFile = [System.IO.Path]::GetDirectoryName($myInvocation.MyCommand.Definition) + ($MyInvocation.MyCommand.Name + ".log")
$thisFile = $PSScriptRoot + "\" + ($MyInvocation.MyCommand.Name + ".log")

# Different formats of dates
[$([DateTime]::Now)]
Get-Date -Format yyyyMMdd
Get-Date -Format HHmmss

# Show date in 1460 in the past and another 1460 days in the future. This is usefull for creating cut-off dates:
(Get-Date).AddDays(-1460)
(Get-Date).AddDays(1460)

# Redirect output of a command to null (add this to end of the code)
 > $null
 2>&1> $null

# Microsoft's stupid way of doing diff:
compare-object (get-content one.txt) (get-content two.txt)

# Escape characters
`

# Prompt user for input stored to variable
$username = Read-Host -Prompt "Enter your username: "
$sshKey = Read-Host -AsSecureString -Prompt "Enter your git credentials: "

# Name of the PC you are running on (multiple methods)
$machineName = Hostname
HOSTNAME.EXE
$env:computername

# Use Task Scheduler to perform tasks with a gMSA account
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument "-ExecutionPolicy bypass -File ""E:\inhere\runMe.ps1"""
$trigger = New-ScheduledTaskTrigger -At 22:00 -Daily
$principal = New-ScheduledTaskPrincipal -UserID DOMAIN\gMSAName$ -LogonType Password -RunLevel Highest
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -Hidden -ExecutionTimeLimit (New-TimeSpan -Minutes 30) -RestartCount 3 -Compatibility Win8 -DontStopOnIdleEnd
$description = "This is where you describe the specifics of this task which is named mAdminTask in the line of text below"
Register-ScheduledTask myAdminTask –Action $action –Trigger $trigger -Principal $principal -Settings $settings -Description $description
