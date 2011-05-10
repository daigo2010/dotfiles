autoload -U compinit
compinit
setopt auto_cd
setopt auto_pushd
setopt correct

#export LANG=ja_JP.eucJP
alias ll='ls -la --show-control-chars --color=auto'

PROMPT="%m%% "
RPROMPT="[%~]"
PROMPT2="zsh%%%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data



