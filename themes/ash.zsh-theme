title "zsh" "%m" "%55<...<%~"
PROMPT=$'\n$(rvm_prompt) in $(directory_name) $(git_prompt_info)$(need_push)\n$CARETCOLOR› %{${reset_color}%}'
RPROMPT="%{$fg_bold[cyan]%}@%m%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="on "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} "
if [ $UID -eq 0 ];
then 
    CARETCOLOR="%{$fg_bold[red]%}"; 
else 
    CARETCOLOR="%{$fg[white]%}";
fi

# Print RVM version
rvm_prompt(){
  if $(which rvm &> /dev/null)
  then
	  echo "%{$fg_bold[yellow]%}$(rvm tools identifier)%{$reset_color%}"
	else
	  echo ""
  fi
}

# Get current directory name
directory_name(){
  echo "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}"
}

# Print Git branch name
git_branch() {
  echo $(git symbolic-ref HEAD 2> /dev/null | awk -F/ {'print $NF'})
}

unpushed () {
  $(git cherry -v origin/$(git_branch) 2> /dev/null)
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}