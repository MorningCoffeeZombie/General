exit
#########################################
## BBBBB	    A		 SSSSS		H	H
## B	B	   A A		S			H	H
## BBBBB	  A   A		 SSSSS		HHHHH
## B	B	 AAAAAAA		  S		H	H
## BBBBB	A		A	 SSSSS		H	H
#########################################
# LINUX SHELL
# .run .sh


# Prefix to allow script execution
#!/bin/bash

# Bash History and similar logs are located at:
/home/$USER/.bash_history		# You may also type `history` to view in terminal

# Pause currently running command (2 variants)
$HOST.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") | OUT-NULL
$HOST.UI.RawUI.Flushinputbuffer()

cmd /c pause | out-null

# Create a variable named $TODAY with the date in ISO format
TODAY=`date '+%Y%m%d-%H%M'`

# Say the name of this current script. Multiple variants:
echo
echo "Script name ---------------->  $0       "
echo "# arguments called with ---->  ${@}     "
echo "# \$1 ---------------------->  $1       "
echo "# \$2 ---------------------->  $2       "
echo "# path to me --------------->  ${0}     "
echo "# parent path -------------->  ${0%/*}  "
echo "# my name ------------------>  ${0##*/} "
echo

# Pass command output to null
#The > operator redirects the output usually to a file but it can be to a device. You can also use >> to append.
#If you don't specify a number then the standard output stream is assumed but you can also redirect errors
> file redirects stdout to file
1> file redirects stdout to file
2> file redirects stderr to file
&> file redirects stdout and stderr to file
/dev/null is the null device it takes any input you want and throws it away. It can be used to suppress any output. Example &>/dev/null


# FORMAT TEXT AS TABLE
Instead of using echo, Use printf command.
You can use %s for string and %d for integer, something like this,
printf " %s %d", $string1 $int1
You can space according to your screen, by using %20s for using 20 characters for the string, %12d for the integer.
Format control options are also available :
\n : newline
\r : return (can combine with \r\n for return+newline)
\t : tab(horizontal)
\v : tab(vertical)
# Example
printf "Hello \t these \t are tabs \n"
printf "And \t the n \t are makes a new line \n"


# Create a variable to bold terminal text. This work just like opening an closing <bold></bold> tags in html
BOLDFONT=$(tput bold)
NORMALFONT=$(tput sgr0)
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Convert variable to upper case letters
VARIABLE=Hello There My FRIend
echo ${VARIABLE^^}

# Convert variable to lower case letters
VARIABLE=Hellow There My FRIend
echo ${VARIABLE,,}

# Find your current Public IP Address
curl icanhazip.com

# Echo contents of an array
ar_my_array=(this is "my favorite" demonstration of an array)
echo "${ar_my_array*]}"

# Basic while loop syntax
INSTALLDIR=$(pwd)
mkdir First
mkdir Second
if [ "$1" = "" ] || [[ ! "$1" = * ]]; then
	echo "Please enter an integer..."
fi
COUNTER=0
while [ "$COUNTER" -lt "$1" ];
do
	COUNTER=$[COUNTER + 1]
	echo $COUNTER
	cd $INSTALLDIR/First/
	touch $COUNTER.txt
	cd $INSTALLDIR/Second/
	touch $COUNTER.txt
#	echo "hello">>Second/$COUNTER.txt
done
exit
