# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PATH="$HOME/.rbenv/bin:$PATH;/usr/include"
eval "$(rbenv init - zsh)"

zsh

# User specific aliases and functions
