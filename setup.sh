# Clone development repos as needed
bash clone-repos.sh

# Add aliases
alias commit='find /workspaces -type d -name ".git" -execdir pwd \; -execdir git add -u \; -execdir git commit -m "Latest" \; -execdir git push \;'
alias commitall='find /workspaces -type d -name ".git" -execdir pwd \; -execdir git add -A \; -execdir git commit -m "Latest" \; -execdir git push \;'
alias status='find /workspaces -type d -name ".git" -execdir pwd \; -execdir git status \;'
alias push='find /workspaces -type d -name ".git" -execdir pwd \; -execdir git push \;'
alias pull='find /workspaces -type d -name ".git" -execdir pwd \; -execdir git pull \;'

# Add all repos to python path
REPOPATHS=""
for repo in ${REPOS}; do
  REPOPATHS="${REPOPATHS}:~/Projects/${repo}"
done
echo "export PYTHONPATH=." >> ~/.bashrc
for repo in ${REPOS}; do
  echo "export PYTHONPATH=\${PYTHONPATH}:~/Projects/${repo}" >> ~/.bash-ss
  if [ ! -d ${repo} ]
    then
      git clone git@github.com:Shapedsundew9/${repo}.git
      git checkout Latest
      git pull
    fi
done