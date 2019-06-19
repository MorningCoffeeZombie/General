/*

// # Install a C compiler on Solus Linux:
sudo eopkg it gcc
sudo eopkg it -c system.devel	# This is the Solus equivalent to "build-essentials"


// # Compile a test file and output it as an executable. Run it the same way as any Shell script
gcc cppTester.cpp -o cppTesterAsExecutable
./cppTesterAsExecutable

*/


// Single line comment
/*

Multi-line comment

*/


// Hello world:
#include<stdio.h>
int main(void)
{
	printf("Hello! This is a test program.\n");
	return 0;
}

