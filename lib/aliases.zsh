alias reload!='. ~/.zshrc'

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Super user
alias _='sudo'

# Show history
alias history='fc -l 1'
alias afind='ack-grep -il'
alias x=extract

# Navigation
alias ..='cd ..'
alias ...='cd ../../' 
alias -- -='cd -'

# Search
alias grep="grep -i $GREP_OPTIONS"

# System Aliases
alias ch='history |grep'
alias diff='diff -ubB'
alias untar='tar -zxvf'
alias zipcreate='zip -y -r -q'
alias systail='tail -f /var/log/system.log'
alias cp_folder='cp -Rpv'
alias psapache='ps -ylC httpd --sort:rss'
alias screen='TERM=screen screen -U'
alias ssh='ssh -4g -o ServerAliveInterval=60'

# Human-readable filesizes
alias du='du -h'
alias df='df -h'
alias free='free -m'

# Development tools
alias opendig="dig @208.67.222.222"
alias phpcs='phpcs --standard=zend'
alias sniff='find . -type f -iname "*.php" -print0 |xargs phpcs --standard=zend'
alias svnaddall='svn status | grep "^\?" | awk "{print \$2}" | xargs svn add' 
alias mfavicon='convert -colors 256 -resize 16x16 '

# Commands starting with % for pasting from web
alias %=' '
