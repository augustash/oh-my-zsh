# start or resume irssi
function irc() {
	if grep irc <<< `tmux ls`; then
		tmux new -s irc
	else
		tmux attach -s irc
	fi
}
