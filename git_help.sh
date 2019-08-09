##
# THESE COMMANDS ARE THE SAME ON LINUX, MAC & WINDOW'S POWERSHELL
##


# CREATE A NEW BRANCH (this example creates a branch named 'dev_example')
git checkout -b dev_example


# SWITCH WHICH BRANCH YOU"RE WORKING ON (in this example you're switching onto the 'dev_example' branch)
git checkout dev_example


# LIST ALL AVAILABLE BRANCHES
git branch -a


# CHECK WHICH BRANCH YOU"RE ON
git status


# MAKE THE MASTER BRANCH BE THE SAME AS THE DEVELOPMENT BRANCH (merge in your changes once they work)
git checkout master
git merge dev_example
git push
