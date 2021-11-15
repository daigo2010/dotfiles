eval "$(/opt/homebrew/bin/brew shellenv)"

tmux
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init -)"

eval "$(nodenv init -)"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$HOME/.cargo/env:$PATH"
