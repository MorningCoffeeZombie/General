exit
:::::::::::::::::::::::::::::::::
:: BBBBB	    A		TTTTTTTTT
:: B	B	   A A			T
:: BBBBB	  A   A			T
:: B	B	 AAAAAAA		T
:: BBBBB	A		A		T
:::::::::::::::::::::::::::::::::
:: WINDOWS BATCH
:: .bat


:: Comments begin with "::" or "rem"
:: my comment
rem my comment

:: Do not repeat entered commands unless they're echos
@echo off

:: Say "this file name" in batch (3 variants)
%0
%~n0
%~n0%~x0
:: Say "this folder location" in batch
%~dp0
:: Say "the name of this batch file" in batch
%~nx0
:: Say "This user's main directory" in batch (This will usually echo "\Users\[username]")
%HOMEPATH%

:: Add this to the end of a command to suppress errors that occur even if echo is off
 >nul 2> nul

:: Save command output to "examplefolder\examplefile.txt" and overwrite any conflicting files
>%~dp0"examplefolder\examplefile.txt"

:: Save command output to "examplefolder\examplefile.txt" without overwriting any conflicting files
>>%~dp0"examplefolder\examplefile.txt"

:: Save output to a file (named "log.txt" for example) which is declared as a variable at the top of the script
SET logFile=%~n0.log
>>%logFile%

:: Sets the variable "isodate" to be the date formatted as YYYMMDD-HHmm. Useful for appending timestamps.
SET isoDate=%date:~10,4%%date:~4,2%%date:~7,2%-%time:~0,2%%time:~3,2%

:: Clean up registry logs (generic script that can be reused without much, if any, revision)
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v %0 /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v *%~n0%~x0 /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v *\%~n0%~x0 /f

:: Prompt the user to type (into the cmd) a string to be saved as a variable
SET /P variable=Enter your string to save here:

:: Launch the referenced batch file (or any program) minimized
:: DO NOT PAIR THIS WITH %~nx0 OR YOU WILL FORK YOURSELF
start /min myfile.bat
:: This one is an entry for Windows Task Scheduler
cmd.exe /c start /min myfile.bat ^& exit

:: The variables declared in this script cannot be called upon by anyther script/environment:
SETLOCAL
:: Same as above, but also tells CMD to "wait until you're about to parse a variable before reading it's contents". aka Don't read the variable until absolutely necessary.
SETLOCAL EnableDelayedExpansion

:: Quick list of env. vars
WHOAMI			DOMAIN\username
%USERNAME%		username
%COMPUTERNAME%	Name of [this] PC/Server on the network
%TIME%			Time in HH:mm:SS:ss format
%DATE%			Date in DAY MM/DD/YYYY format

