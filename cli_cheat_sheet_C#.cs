


// Insttal VSCode on a Linux device
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
	// This line depends on your distro/release. 
sudo dpkg -i packages-microsoft-prod.deb
sudo add-apt-repository universe
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-2.2


// Alternate program for compiling C# from source: Mono
// https://www.mono-project.com/download/stable/#download-lin
sudo apt-get install mono-devel
sudo apt-get install mono-complete
sudo apt-get install mono-dbg
sudo apt-get install referenceassemblies-pcl
sudo apt-get install ca-certificates-mono
sudo apt-get install mono-xsp4

// Compile a .cs file into an .exe 
// https://www.mono-project.com/docs/getting-started/mono-basics/
mcs helloworld.cs
	// If that doesn't work use `csc helloworld.cs`


// List of error codes to throw on `Environment.Exit(0)`:
//https://docs.microsoft.com/en-us/windows/win32/debug/system-error-codes?redirectedfrom=MSDN


// Proper coding techniques for global namespace...never put anything in the global namespace (it's like creating a generically named global var and hoping nothing calls it)
namepace MyNamespaceHere { class MyClassHere { static void Main(string[] args) { Console.WriteLine($"My codes should be in the same heirarchy as this Console.WriteLine");  Console.WriteLine($"Or just next to it..."); } } }
	// Also please only have 1 class per .cs file. Standard conventions for making sure code isn't too crazy.







// Display SDK/Runtime info for dotnet
dotnet --info

// Open VSCode from terminal (if installed)
code .

// Create a new dotnet project for console/terminal only applications.
dotnet new console

// Run any projects in the current directory if available
dotnet run
	// This will automatically do a `dotnet restore` and `dotnet build` for you
	// You can pass parameters into the the C// (instead of into the command you're using to launch it) by adding " -- " at the end of the terminal args but before the program parameter. Ex: dotnet run TerminalArg -- ProgramArg1 ProgramArg2
// Pull in all dependencies and collect code from all necessary libraries to compile script:
dotnet restore

// Compile source
dotnet build
	// After running restore and build commands your /src/$PROJECTNAME/ directory will contain /obj/ and /bin/.
	// /obj/ are temp files and /bin/ is for simple debugging. Neither are critical and should probably beling in a .gitignore












