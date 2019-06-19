/***************************************************************************************************************

	// # Install a C compiler on Solus Linux:
	sudo eopkg it gcc
	sudo eopkg it -c system.devel	# This is the Solus equivalent to "build-essentials"


	// # Compile a test file and output it as an executable. Run it the same way as any Shell script
	// # Use "g++" not "gcc" for C++ scripts...
	g++ cppTester.cpp -o cppTesterAsExecutable
	./cppTesterAsExecutable


	// LOGIC
	Less than: a < b
	Less than or equal to: a <= b
	Greater than: a > b
	Greater than or equal to: a >= b
	Equal to a == b
	Not Equal to: a != b

***************************************************************************************************************/


// Single line comment


// COMMON HEADERS / LIBRARIES / INCLUDES REFERENCED:
#include<stdio.h>
#include<iostream>
using namespace std;


// Print to screen:
string varPrintScreenExample = "This was written as a variable, and again it uses endl because endl is great!";
int main(void){
	printf("This is a basic printf statement. It uses an escaped n to create a new line.\n");
	cout << "This is using cout and <<endl to create a new line" << endl;
	cout << varPrintScreenExample << endl;
	return 0;
}


// Declare variables. Format is: type name = value;
int varInteger = 123;
double varDecimal = 12.3;
char varCharacter = 'a';	// Char strings must be wrapped in 'single quotes'
string varString = "This is a string whereas the character variables may only be a single letter";
bool varBoolean = true;		// Accepts "yes" "no" true false 1 0. Notice the Yes/No must be in "double quotes".


// New line (breakrule/carriage return) in a print statement:
int main(void){
	printf("Hello! This is a test program.\n");
	return 0;
}
// OR
string varString = "This is a string whereas the character variables may only be a single letter";
int main() {
	cout << varInteger << endl;
	cout << varDecimal << endl;
	cout << varCharacter << endl;
	cout << varString << endl;
	cout << varBoolean << endl;
	return 0;
}
// Pay attention to using either "\n" or, if usint cout statement, " << endl"


// IF THEN ELSE
int main() {
	if (varInteger + varDecimal > 10){
		cout << "varInteger plus varDecimal are greater than 10!" << endl;
	} else if (varInteger + varDecimal < 10){
		cout << "varInteger plus varDecimal are less than 10!" << endl;
	} else{
		cout << "varInteger plus varDecimal are equal to 10!" << endl;
	}
	return 0;
}


// Grab user input:
int main(){
	int varUserInput;	// Creating an empty variable
	cout << "Pick a number and type it here: ";
	cin >> varUserInput;	// This is where the magic happens, cin >>
	cout << "You picked: " << varUserInput << endl;
	return 0;
}


// Build array and loop through it
int main(){
	string arrComputers[] = {"Dell", "HP", "Mac", "HomeBrew"};	// You can specify the array size by entering an integer in the brackets if need-be.
	cout << arrComputers[0] << endl;	// Arrays start at 0 like usual. This will print the first array value.
	for(int i = 0; i < 4; i++) {	// Loop through all the elements of an array
		cout << arrComputers[i] << "\n";
	}
	return 0;
}


// Create and call a function:
// Functions will either begin with "void" or "int"
void funTestFunction(){
	cout << "You just called my custom/test function!" << endl;
	cout << "It is a 'void' because it does not have a return value" <<endl;
	cout << "Functions work the same as in Bash/Shell from what I've noticed so far..." <<endl;
}

int main() {
	funTestFunction();
	return 0;
}


// BETTER WAY OF DOING FUNCTIONS:
// You can declare all functions by name at top (to reserve their name) but place code anywhere and it will work anywhere:
void funTestFunction();
int main() {
	funTestFunction();
	return 0;
}
void funTestFunction(){
	cout << "This just worked, even though the cout is below the int main" <<endl;
}


// Classes and object
class classTestClass {	// Create a new class
	public:		// Access specifier
		int varCoolNumber;	// Attribute
		string varCoolWords;	// Attribute
};
int main(){
	classTestClass objMyNewObject;	//Creating a new object
	objMyNewObject.varCoolNumber = 321;	// Assigning value to the attribute
	objMyNewObject.varCoolWords = "These words are awesome";	// Assigning value to the attribute
	// Print out the values of the attribute in this object:
	cout << objMyNewObject.varCoolNumber << endl;
	cout << objMyNewObject.varCoolWords << endl;
}


