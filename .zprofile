eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NODEENV_ROOT="$HOME/.nodenv"
export PATH="$NODEENV_ROOT/bin:$PATH"
eval "$(nodenv init -)"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$HOME/.cargo/env:$PATH"
