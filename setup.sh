#!/usr/bin/env bash
bash clone-repos.sh

alias commit='find /workspaces -type d -name ".git" -execdir pwd \; -execdir git add -u \; -execdir git commit -m "Latest" \; -execdir git push \;'
alias commitall='find /workspaces -type d -name ".git" -execdir pwd \; -execdir git add -A \; -execdir git commit -m "Latest" \; -execdir git push \;'
alias status='find /workspaces -type d -name ".git" -execdir pwd \; -execdir git status \;'
alias push='find /workspaces -type d -name ".git" -execdir pwd \; -execdir git push \;'
alias pull='find /workspaces -type d -name ".git" -execdir pwd \; -execdir git pull \;'