##
# THESE COMMANDS ARE THE SAME ON LINUX, MAC & WINDOW'S POWERSHELL
##


# CREATE A NEW BRANCH (this example creates a branch named 'dev_example')
git checkout -b dev_example
git push --set-upstream origin dev_example


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

# Force a git pull if the cloud repo is the more up-to-date version (will loose all local changes)
git fetch --all
git reset --hard origin/dev_example   # You could alternatively use:   git reset --hard origin/master



# How to log into existing account from new pc
# Dont forget to get an ssh key from github.com and add it to GitGUI (if on windows)
git config --global user.email "123asdf456@users.noreply.github.com"
git config --global user.name "Account username"
git rebase -i
git commit --amend --reset-author
git rebase --continue
git push

# Switch to nano (instead of vim) as an editor
git config --global core.editor "nano"


