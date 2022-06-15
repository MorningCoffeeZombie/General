# General
Files that could fit in numerous categories.




# Random Git Info
*git commit -a* automatically stage all tracked, modified files before the commit If you think the git add stage of the workflow is too cumbersome, Git allows you to skip that part with the -a option. This basically tells Git to run git add on any file that is "tracked" - that is, any file that was in your last commit and has been modified. This allows you to do a more Subversion style workflow if you want, simply editing files and then running git commit -a when you want to snapshot everything that has been changed. You still need to run git add to start tracking new files, though, just like Subversion.

Using the option *-am* allows you to add and create a message for the commit in one command.

**How to save your username on a \*nix system:**  
`git config --global credential.username $USER`

**.gitignore patters**
[https://www.atlassian.com/git/tutorials/saving-changes/gitignore](https://www.atlassian.com/git/tutorials/saving-changes/gitignore)



# Install .exe Files With WINE   
`winecfg`    
`wine /path/to/my_program.exe`   

# Install ThinkOrSwim (TDAmeritrade) On Solus

Install your distro's java-jdk package from the repo. For Solus this is `eopkg it openjdk-11` or `openjdk-17`.  
Symlink the java install for 3rd party apps to run: `sudo ln -svf /usr/lib64/openjdk-11 /usr/bin/java`  

Download the Linux TOS installer .sh file from https://mediaserver.thinkorswim.com/installer/install.html   
Run it with `sh ./thinkorswim_installer.sh`   
Copy the thinkorswim launcher from your Desktop to /usr/share/applications/ for it to appear in start menus   
Also helpful:   
	https://mediaserver.thinkorswim.com/installer/install.html   
	https://getsol.us/articles/software/java/en/   



**BELOW IS THE OUT DATED METHOD OF INSTALLING JAVA:**  
Download the 64bit Java .tar.gz file from https://java.com/en/download/linux_manual.jsp   
Unzip the tarball with:  
	`tar xf jre-8u*-linux-x64.tar.gz`    
Move the "jre*" folder to /opt/     
Symlink the folder to allow shebang style execution:     
	`sudo ln -svf /opt/jre1.8.0_*/bin/java /usr/bin/java`      
Download the Linux TOS installer .sh file from https://mediaserver.thinkorswim.com/installer/install.html   
Run it with   
	`sh ./thinkorswim_installer.sh`   
Copy the thinkorswim launcher from your Desktop to /usr/share/applications/ for it to appear in start menus   
Also helpful:   
	https://mediaserver.thinkorswim.com/installer/install.html   
	https://getsol.us/articles/software/java/en/   

# End / Manage TTY Sessions  
Ctrl + Alt + [F1 - F7 keys]	# This will switch to another TTY session  
w	# This will list all active TTY sessions  
systemctl stop getty@ttyX.service	# Replace the "X" in "ttyX" with the number of the TTY session you wish to kill  

# Search Within Text Recursively

`grep -iRl "find this phrase here" --exclude=*.{png,jpg,xml,mkv,mp4,gz,msi,wav,vcr,exe,dat,mp3,dll,iso,gif,webm,psd,tga,bmp}`



