# Fix Mac OS X delete key issue
bindkey "^[[3~" delete-char

# Alias for common Linux utility
alias updatedb='sudo /usr/libexec/locate.updatedb'

# Flush the local DNS cache
alias flushdns='sudo dscacheutil -flushcache'

# Boot the system in full 64-bit mode
alias boot64='sudo systemsetup -setkernelbootarchitecture x86_64'

# Restart Finder.app
alias finder:restart='sudo killall Finder && sudo pen /System/Library/CoreServices/Finder.app'

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Desktop Programs
alias preview="open -a '$PREVIEW'"
alias safari="open -a safari"
alias firefox="open -a firefox"
alias chrome="open -a google\ chrome"
alias finder='open -a Finder '
