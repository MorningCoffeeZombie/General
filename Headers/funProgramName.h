#include<stdio.h>	// Allows printf command
#include<iostream>
#include<fstream>	// Stream class to both read and write from/to files. (This is how you write to logs)
#include<cstdio>	// Redirection of stderr and stdout text to log files.
#include<algorithm>	// Can be used for sed/awk/etc. find and replace functions
using namespace std;

// https://www.lemoda.net/c/exe-path/

// FIND NAME PATH:
////////////////////////////////////////////
#include<stdlib.h>	// For realpath
#include<sys/param.h>	// For PATH_MAX (the maximum length of a path).	
#include<string.h>	// For strerror.
#include<errno.h>	// For errno.
static void call_realpath (char * argv0){
	char resolved_path[PATH_MAX];
	if (realpath (argv0, resolved_path) == 0) { 
		fprintf (stderr, "realpath failed: '%s'", strerror (errno));
	} else {
		printf ("Program's full path is %s", resolved_path);
	}
}
////////////////////////////////////////////




/* EXAMPLE USAGE
////////////////
int main(int argc, char* argv[]){
	cout << argv[0];
	printf ("Program called as '%s'\n", argv[0]);
	call_realpath (argv[0]);	
		// Unis systems could also use this:
			//extern char * program_invocation_name;	// This line must be before the "int main()" function
			//call_realpath (program_invocation_name);
	return 0;
}
*/
















