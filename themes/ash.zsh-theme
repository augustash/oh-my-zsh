title "zsh" "%m" "%55<...<%~"
PROMPT=$'\n$(get_host)$(rvm_prompt) in $(directory_name) $(git_prompt_info)$(check_push)\n$CARET %{${reset_color}%}'
RPROMPT=""

ZSH_THEME_GIT_PROMPT_PREFIX="on "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}"

# Get user level
if [ $UID -eq 0 ];
then 
  CARET="%{$fg_bold[red]%}»"; 
else
  CARET="%{$fg[white]%}›";
fi

# Get hostname
get_host() {
    echo "%{$fg_bold[blue]%}@%m%{$reset_color%} "
}

# Print RVM version
rvm_prompt() {
  if $(which rvm &> /dev/null)
  then
	  echo "%{$fg_bold[yellow]%}$(rvm tools identifier)%{$reset_color%}"
	else
	  echo ""
  fi
}

# Get current directory name
directory_name() {
  echo "%{$fg_bold[blue]%}%1/%\/%{$reset_color%}"
}

# Print Git branch name
git_branch() {
  echo $(git symbolic-ref HEAD 2> /dev/null | awk -F/ {'print $NF'})
}

# Find commits not merged upstream
check_push() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  if [[ -n $(cherry -v origin/${ref#refs/heads/} 2> /dev/null) ]]; then
    echo " %{$fg_bold[magenta]%}⚡%{$reset_color%} "
  else
    echo ""
  fi
}

# get the name of the branch we are on
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(parse_git_dirty)${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}