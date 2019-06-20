#include<stdio.h>	// Allows printf command
#include<iostream>
#include<fstream>	// Stream class to both read and write from/to files. (This is how you write to logs)
#include<cstdio>	// Redirection of stderr and stdout text to log files.
#include<algorithm>	// Can be used for sed/awk/etc. find and replace functions
using namespace std;

// https://stackoverflow.com/questions/7400418/writing-a-log-file-in-c-c

// LOGGING:
////////////////////////////////////////////
inline string funCurrentDateTime( string s ){
	time_t now = time(0);
	struct tm  tstruct;
	char  buf[80];
	tstruct = *localtime(&now);
	if(s=="now")
		strftime(buf, sizeof(buf), "%Y%m%d %X", &tstruct);
	else if(s=="date")
		strftime(buf, sizeof(buf), "%Y%m%d", &tstruct);
	return string(buf);
};
inline void funLogger( string logMsg ){
	string filePath = "program_name_"+funCurrentDateTime("date")+".log";
	string now = funCurrentDateTime("now");
	ofstream ofs(filePath.c_str(), std::ios_base::out | std::ios_base::app );
	ofs << now << '\t' << logMsg << '\n';
	ofs.close();
}
////////////////////////////////////////////



/* EXAMPLE USAGE
////////////////
int main(int argc, char* argv[]){
	funLogger(funCurrentDateTime("now"));
	funLogger("I want to log this message here");
	return 0;
}
*/


