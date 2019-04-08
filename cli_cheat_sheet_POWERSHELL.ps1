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

# Microsoft's stupid way of doing `diff`:
compare-object (get-content one.txt) (get-content two.txt)

# Microsoft's stupid way of doing `tail -f`:
Get-Content -Path "C:\scripts\test.txt" -Wait

# microsoft's way of using `curl` to find your own IP address (resolver is interchangable)
Invoke-RestMethod "icanhazip.com"

# Escape characters
`

# Prompt user for input stored to variable
$username = Read-Host -Prompt "Enter your username: "
$sshKey = Read-Host -AsSecureString -Prompt "Enter your git credentials: "

# Name of the PC you are running on (multiple methods)
$machineName = Hostname
HOSTNAME.EXE
$env:computername

# List UNC file paths of available drives (or for `net use` also declare mount point in script)
Get-SmbConnection
Get-SmbMapping
net use

# List all available drives on the pc
Get-PSDrive

# Use Task Scheduler to perform tasks with a gMSA account
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument "-ExecutionPolicy bypass -File ""E:\inhere\runMe.ps1"""
$trigger = New-ScheduledTaskTrigger -At 22:00 -Daily
$principal = New-ScheduledTaskPrincipal -UserID DOMAIN\gMSAName$ -LogonType Password -RunLevel Highest
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -Hidden -ExecutionTimeLimit (New-TimeSpan -Minutes 30) -RestartCount 3 -Compatibility Win8 -DontStopOnIdleEnd
$description = "This is where you describe the specifics of this task which is named mAdminTask in the line of text below"
Register-ScheduledTask myAdminTask –Action $action –Trigger $trigger -Principal $principal -Settings $settings -Description $description

# Format output text as table
function tableDemo() {
	$myTable = @()
	
	$objMyList = New-Object System.Object
	$objMyList | Add-Member -type NoteProperty -name "Col1" -value "col1row1 Value"
	$objMyList | Add-Member -type NoteProperty -name "Col2" -value "col2row1 Value"
	$myTable += $objMyList
 
	$objMyList = New-Object System.Object
	$objMyList | Add-Member -type NoteProperty -name "Col1" -value "col1row2 Value"
	$objMyList | Add-Member -type NoteProperty -name "Col2" -value "col2row2 Value"
	$myTable += $objMyList
	
	$myTable | Format-Table "Col1","Col2" -AutoSize
}

# Fix "Unsigned certificate / not digitally signed" issues when running a script from another PC:
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

# Find and replace within all files inside of variable $FINDIN
(Get-Content $FINDIN\*) -replace 'Look for me', 'Replace with me' | Set-Content $FINDIN\*
# or:
(Get-Content $FINDIN\*) -replace "$firstVar$secondVar", $firstVar | Set-Content $FINDIN\*

# Enable PoSh scripting on device (open PoSh in admin mode)
Set-ExecutionPolicy RemoteSigned


