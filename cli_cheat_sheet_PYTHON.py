# This is a single line comment!
# Spacing and etc ARE HUGELY IMPORTANT in .py - you don't use brackets for functions/loops, instead your indentation determines the loop.
# Doing division with / will product a float/decimal. You can use // instead to produce an integer
    # 10 / 5
    # 10 // 5

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

































