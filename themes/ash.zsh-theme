PROMPT='
$(user_name) at $(box_name) in $(directory_name) $(git_prompt_info)$(check_push)
$(prompt_caret)%{$reset_color%} '

RPROMPT='$(battery_charge)'

ZSH_THEME_GIT_PROMPT_PREFIX="on "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="?"
ZSH_THEME_GIT_PROMPT_CLEAN=""


# Change prompt character based on UID
prompt_caret() {
    if [ $UID -eq 0 ]
    then
        echo "%{$fg_bold[magenta]%}»"
    else
        echo "%{$fg[white]%}›"
    fi
}

# Current user
user_name() {
    echo "%{$fg[magenta]%}%n%{$reset_color%}"
}

# Capture machine's hostname
box_name() {
    if [ -f ~/.box-name ]
    then
        HOST="$(cat ~/.box-name)"
    else
        HOST="$(hostname -s)"
    fi

    echo "%{$fg[yellow]%}$HOST%{$reset_color%}"
}

# Get current directory name
directory_name() {
    echo "%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}"
}

# If battery powered, show charge remaining
battery_charge() {
    if [ -f ~/.bin/battery]
    then
        echo "$(~/.bin/battery Discharging` 2>/dev/null)"
    else
        return
    fi
}

# Print RVM version
rvm_prompt() {
    if $(which rvm &> /dev/null)
    then
        echo "%{$fg_bold[yellow]%}$(rvm tools identifier)%{$reset_color%} "
    else
        return
    fi
}

# Get active branch
git_prompt_info() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(parse_git_dirty)${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# Find commits not merged upstream
check_push() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    if [[ -n $(cherry -v origin/${ref#refs/heads/} 2> /dev/null) ]]; then
        echo " %{$fg_bold[magenta]%}⚡%{$reset_color%} "
    else
        return
    fi
}

# Print Git branch name
git_branch() {
    echo "$(git symbolic-ref HEAD 2> /dev/null | awk -F/ {'print $NF'})"
}
