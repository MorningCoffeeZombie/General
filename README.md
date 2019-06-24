# General
Files that could fit in numerous categories.




# Random Git Info
*git commit -a* automatically stage all tracked, modified files before the commit If you think the git add stage of the workflow is too cumbersome, Git allows you to skip that part with the -a option. This basically tells Git to run git add on any file that is "tracked" - that is, any file that was in your last commit and has been modified. This allows you to do a more Subversion style workflow if you want, simply editing files and then running git commit -a when you want to snapshot everything that has been changed. You still need to run git add to start tracking new files, though, just like Subversion.

Using the option *-am* allows you to add and create a message for the commit in one command.

**How to save your username on a \*nix system:**  
`git config --global credential.username $USER`
