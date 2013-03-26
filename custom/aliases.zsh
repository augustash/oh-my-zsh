# search
alias f='find'
alias grep="grep -i $GREP_OPTIONS"

# misc. system aliases
alias _='sudo'
alias reload!='. ~/.zshrc'
alias x=extract
alias diff='diff -ubB'
alias untar='tar -zxvf'
alias zipcreate='zip -y -r -q'
alias cp_folder='cp -Rpv'
alias screen='screen -U'
alias fixpermd='find . -type d -exec chmod 755 {} \;'
alias fixpermf='find . -type f -exec chmod 644 {} \;'
alias nsopen='netstat -lptu'
alias ssh='ssh -4g -o ServerAliveInterval=60'

# human-readable filesizes
alias df='df -h'
alias du='du -h'
alias du1='du -h --max-depth=1'
alias free='free -m'
alias l='ls -lah'
alias ll='ls -lh'

# Disable auto-corrections
alias sudo='nocorrect sudo'
alias vim='nocorrect vim'
alias php='nocorrect php'
