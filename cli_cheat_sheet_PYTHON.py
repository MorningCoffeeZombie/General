# This is a single line comment!
# Spacing and etc ARE HUGELY IMPORTANT in .py - you don't use brackets for functions/loops, instead your indentation determines the loop.
# Doing division with / will product a float/decimal. You can use // instead to produce an integer
    # 10 / 5
    # 10 // 5

# Logic operators:
    # ==
        # This is only for comparisons, when assigning values to vars you only use "="
    # !=
    # <
    # >
    # <=
    # >=

# Strings can be in single quotes or double quotes to avoid needing escape characters


# Display man pages
help
help(math)    # Displays the man page for the `import math` library
help(math.factorial)    # request specific help on the 'factorial' function


# Print to screen (in python3)
print('Hello world!')


# Declare variable and print it to terminal
x = 5
x


# Exit a live terminal running python:
    # Press Ctrl + D    if on Linux/Mac
    # Press Ctrl + Z + Enter    if on windows
    # If you accidentally run Ctrl + Z + Enter while on a *nix system it will put the Python terminal in the background to you Bash terminal.
        fg    # This will return you to the original Python window


# Simple for loop
for i in range(5):
    x = i * 10
    print(x)


# Common imports & their uses
import math    # allows for more complex mathematical functions
    math.sqrt(81)    # find the square root of 81


# Import a function from a library but in a shorthand form (instead of math.factorial it becomes factorial or fac)
from math import factorial    # Allows you to type `factorial(x)` instead of math.factorial(x)
from math import factorial fac    # Allows you to type `fac(x)` instead of factorial(x)


# Convert a value into a string. Using "fac(n)" for an example
str(fac(n))
# Count the number of characters and digits in that string:
len(str(fac(n)))


# Recognized Scalar types
    # int    -    standard integer / whole number
    # float    -    64bit decimal numbers
    # None    -    the null object / place holder (N must be capital)
    # bool    -    boolean true/false
int(3.99)    # This will convert the float of 3.99 into an int and round down to the nearest whole number (3).
int("1000")    # converts the string of "1000" into an int
float(7)    # converts int 7 into 7.0 float
float("nan")    # Short for 'not a number' and is just meant to be a mathematical representation/placeholde4r
float("inf")    # infinity in float form
float("-inf")    # negative infinity in float form
# Any calculation between ints and floats will convert them to floats
bool(0)        # Convert a non boolean value into a bool. Only 0 is false, all other values are 'True'
bool(-1)    # Convert a non boolean value into a bool
bool([])    # Determine the bool if the array has values. Compare this to `bool([1, 5, 9])` which is 'True'
# You cannot convert strings to bool unless the string is empty. Ex: `bool("")`


# Basic if/then
h = 42
if h > 50:
    print("Greater than 50")
else:
    print("50 or smaller")

if "eggs":
    print("You don't need to call the `bool(\"eggs\")` to determine true/false because it's implied")
elif "eggs and ham":
    print("This is the else if")
else:
    print("Back to else")


# Basic while loops
c = 5
while c != 0:
	print(c, " - the loop is active")
	c -= 1

c = 5
while c:	# This one works because when c hits 0 python will read the 0 as boolean for false and end the loop. This is not pythonic because the code isn't obvious when you immediately read it
	print(c)
	c -= 1

while True:	# Creating an infinite loop
	print("enter a number")
	response = input()	# prompt user for input and save what they type to variable named 'response'
	if int(response) % 7 == 0:	# check if number is divisible by seven, if the remained == 0 then enter a new if block
		break	# Terminates the innermost loop


# Multi line strings
text = """Using three quotes, 
be they single or double,
create a multi line string"""
escapes = "alternatively you can use \n to break lines. \n Python trumps windows and doesnt require /r/n...just \n"
print(text)
print(escapes)


# Raw strings (no escaping)
	# If you need to do something like store a windows file path and dont want to escape each \ you can do this. C:\Place\To\File
path = r`C:\Place\To\File`
	# These are raw strings and what you see is what you get. Just place an 'r' infront of the string


# Grab substrings from a string
wordstring = 'parrot'
wordstring[4]	# Place a number in brackets and the console will output the character at that location (this would output "o" as it's the 4th letter)


# Adjust case sensitivity
place = "oslo"
place.capitalize()	# This will use the capitalize function to convert the string object into sentence-case format (oslo to Oslo)


# Bytes - Python supports many encodings but defaults to UTF-8
example = b'some bytes of data'
example.split()	# This will break down the example string by individual words
crazyletters = "søme Θf ñ these lettµrs ăre ќ wierd ќ"
encodedletters = crazyletters.encode("utf-8")	# Now if you just type `encodedletters` it will escape the letters to bytes
backtonormal = encodedletters.decode(utf-8")	# Displays the escaped sequence as you'd expect to read it
crazyletters = backtonormal	# This will return a boolean, based off this example it should return 'true'


# Lists
mywords = ["this", "is", "a", "literal", "list", "because", "brackets", "and", "commas"]
mynumbers = [1, 5, 15, 22]
mywords[4]	# Displays 4th value in list (values start at 0)
emptylist = []	# It's nice to create empty lists so you can use the append function later to fill them:
emptylist.append(123)
emptylist.append("I added this!")
emptylist
list("characters")	# This is a list constructor. It will take all values inside and convert them into a list
# Leaving a spare comma at the end of a list/array is perfectly acceptable.


# Dictionaries
	# These are created with key:value,key:value pairings
	# They are not stored in a particular order
phones = {'alice':'123-456-7890', 'susie':'987-654-3210', 'eve':'456-987-1560'}
phones['alice']	# You can retrieve values by key using the [] operator
phones['alice'] = '420-369-1337'	# This is how you update and reassessing the value to the key pairing. If the key you call doesn't already exist it will create a new entry
phones	# Display dictionary
emptydict = {}	# Creates an empty dictionary for being appended to later via the emptydict.append() function


# For loops 
cities = ["London", "New York", "Oslo", "Paris", "Helsinki"]
for city in cities:
	print(city, " is a cool place to visit")

colors = {'crimson': 0xdc143c, 'coral': 0xff7f50, 'teal': 0x008080}
for color in colors:
	print(color, colors[color])


