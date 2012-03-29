# Aliases
alias g='git'
compdef g=git
alias get='git'
compdef get=git
alias gcl='git clone'
compdef gcl=git
alias gst='git status'
compdef _git gst=git-status
alias gs='git status'
compdef _git gst=git-status
alias gss='git status -s'
compdef _git gss=git-status
alias gl='git pull'
compdef _git gl=git-pull
alias gup='git fetch && git rebase'
compdef _git gup=git-fetch
alias gp='git push'
compdef _git gp=git-push
alias gpo='git push origin'
compdef _git gpo=git-push
alias gdv="git diff -w \"$@\" | vim -R -"
compdef _git gdv=git-diff
alias gc='git commit -v'
compdef _git gc=git-commit
alias gca='git commit -v -a'
compdef _git gca=git-commit
alias gci='git commit --interactive'
compdef _git gci=git-commit
alias gco='git checkout'
compdef _git gco=git-checkout
alias gcm='git checkout master'
compdef _git gcm=git-checkout
alias gb='git branch'
compdef _git gb=git-branch
alias gba='git branch -a'
compdef _git gba=git-branch
alias gdel='git branch -D'
compdef _git gdel=git-branch
alias gcount='git shortlog -sn'
compdef gcount=git
alias gcp='git cherry-pick'
compdef _git gcp=git-cherry-pick
alias glg='git log --stat --max-count=5'
compdef _git glg=git-log
alias glgg='git log --graph --max-count=5'
compdef _git glgg=git-log
alias gss='git status -s'
compdef _git gss=git-status
alias ga='git add'
compdef _git ga=git-add
alias gall='git add .'
compdef _git ga=git-add
alias gm='git merge'
compdef _git gm=git-merge
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias gexport='git archive --format zip --output'
compdef gexport=git
alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
compdef _git gmu=git-fetch
alias gll='git log --graph --pretty=oneline --abbrev-commit'
compdef _git gll=git-log
alias gd='git diff'
compdef _git gd=git-diff

# Git and SVN
alias gsr='git svn rebase'
alias gsd='git svn dcommit'
#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

# these aliases take advantage of the previous function
alias ggpull='git pull origin $(current_branch)'
compdef ggpull=git
alias ggpush='git push origin $(current_branch)'
compdef ggpush=git
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
compdef ggpnp=git

#
# Help
#
function git-help() {
  echo "Git Custom Aliases Usage"
  echo
  echo "  g       = git"
  echo "  get     = git"
  echo "  gcl     = git clone"
  echo "  ga      = git add"
  echo "  gall    = git add ."
  echo "  gst/gs  = git status"
  echo "  gss     = git status -s"
  echo "  gl      = git pull"
  echo "  ggpull  = git pull origin \"$(current_branch)\""
  echo "  gp      = git push"
  echo "  gpo     = git push origin"
  echo "  ggpush  = git push origin \"$(current_branch)\""
  echo "  ggpnp   = git pull origin \"$(current_branch)\" && git push origin \"$(current_branch)\""
  echo "  gd      = git diff"
  echo "  gdv     = git diff -w \"$@\" | vim -R -"
  echo "  gup     = git fetch && git rebase"
  echo "  gc      = git commit -v"
  echo "  gca     = git commit -v -a"
  echo "  gci     = git commit --interactive"
  echo "  gb      = git branch"
  echo "  gba     = git branch -a"
  echo "  gdel    = git branch -D"
  echo "  gcount  = git shortlog -sn"
  echo "  gcp     = git cherry-pick"
  echo "  gco     = git checkout"
  echo "  gcm     = git checkout master"
  echo "  gexport = git git archive --format zip --output"
  echo "  gmu     = git fetch origin -v; git fetch upstream -v; git merge upstream/master"
  echo "  gll     = git log --graph --pretty=oneline --abbrev-commit"
  echo
}
