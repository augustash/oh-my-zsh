PROMPT='%{$fg[blue]%}[%{$fg[cyan]%}%c%{$fg[blue]%}] $(git_prompt_info)%{$fg_bold[blue]%}$ %{$reset_color%}'
RPROMPT='%{$fg[blue]%}${PWD/#$HOME/~}%{$reset_color%} @%m'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=") %{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=") "
