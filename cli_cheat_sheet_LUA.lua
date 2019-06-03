-- Comment
-- https://www.lua.org/pil/contents.html
-- Lua IS case-sensitive

--[[
	This is a block quote
	It goes across many lines

	Here are the escape sequences for various characters:
	\a	bell
	\b	back space
	\f	form feed
	\n	newline
	\r	carriage return
	\t	horizontal tab
	\v	vertical tab
	\\	backslash
	\"	double quote
	\'	single quote
	\[	left square bracket
	\]	right square bracket


	Here are Lua's relational operators. They all result in either true or false
	<
	>
	<=
	>=
	==
	~=


	Here is how Lua determins order of operation (from highest priority to lowest)
	^
	not  - (unary)
	*   /
	+   -
	..
	<   >   <=  >=  ~=  ==
	and
	or

]]

-- Echo to console
print("Hello world")

-- Declare a global variable then print it
varNumber = 10 * 15
varDifferentNumber = 10
varCoolPhrase = "I'm super cool"	-- You could also use 'single quotes' if you don't like the doubles
print(varNumber)
print(varDifferentNumber)
print(varCoolPhrase)

-- Declare a local variable
local varLocalVariable = "I'm local to this script"

-- This is how you clear a variable: set it to 'nil'
varDifferentNumber = nil
print(varDifferentNumber)

-- The TYPE command tells you the type name of a given value.
print(type(varNumber))
print(type("Hello world"))

-- Concatenate strings with ".."
print("Hello" .. "World")
print(0 .. 1)
varHello = "Hello"
print(varHello .. " World")

-- Define an array. Array numbering begins with 1! NOT 0!
arrDays = { "Monday", "Tuesday", "Wednesday", 
			"Thursday", "Friday", "Saturday", "Sunday" }
print(arrDays[3])

-- Arrays start at 1 but you can force them to start at 0 like this. There is a training comma to show that it won't bork the code (it doesn't matter)
arrDaysForce0 = { [0]="Monday", "Tuesday", "Wednesday", 
			"Thursday", "Friday", "Saturday", "Sunday", }
print(arrDaysForce0[3])

-- Logical IF statements
varNumber15 = 15
if varNumber15 < 0 then
	print("Why is " .. varNumber15 .. " less than 0?")
elseif varNumber15 == 0 then
	print("Why is " .. varNumber15 .. " equal to 0?")
elseif varNumber15 > 0 then
	print("varNumber15 aka " .. varNumber15 .. " is greater than 0!")
else 
	error("something's wrong")
end

-- Here's a while loop...but it's not working
--local i = 1
	--while a[i] do
		--print(a[i])
		--i = i + 1
--end




