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
    # Press Ctrl + D	if on Linux/Mac
    # Press Ctrl + Z + Enter	if on windows
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
	# int	-	standard integer / whole number
	# float	-	64bit decimal numbers
	# None	-	the null object / place holder (N must be capital)
	# bool	-	boolean true/false
int(3.99)	# This will convert the float of 3.99 into an int and round down to the nearest whole number (3).
int("1000")	# converts the string of "1000" into an int
float(7)	# converts int 7 into 7.0 float
float("nan")	# Short for 'not a number' and is just meant to be a mathematical representation/placeholde4r
float("inf")	# infinity in float form
float("-inf")	# negative infinity in float form
# Any calculation between ints and floats will convert them to floats
bool(0)		# Convert a non boolean value into a bool. Only 0 is false, all other values are 'True'
bool(-1)	# Convert a non boolean value into a bool
bool([])	# Determine the bool if the array has values. Compare this to `bool([1, 5, 9])` which is 'True'
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




