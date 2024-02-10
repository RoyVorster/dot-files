# Source aliases etc...
for f in $(find "$HOME/.shell_config/" -type f); do source $f; done

# Oh my zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="arrow-custom"
DISABLE_AUTO_UPDATE="true"
CASE_SENSITIVE="false"

plugins=(
    gitfast
    cabal
    python
)

source-if-exists "$ZSH/oh-my-zsh.sh"

export EDITOR=$(which nvim)

# Path variables
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/julia/bin:$PATH"

export GOPATH="$HOME/go/"
export PATH="$GOPATH/bin:$PATH"

# FZF
source-if-exists "$HOME/.fzf.zsh"

# Pyenv
if [[ $OSTYPE == 'darwin'* ]]; then
    export PYENV_ROOT="$HOME/.pyenv" 
    export PATH="$PATH:$PYENV_ROOT/bin" 
    eval "$(pyenv init --path)" 
    eval "$(pyenv init -)"
fi

# NVM
source-if-exists "/usr/share/nvm/init-nvm.sh" --no-use

# ghcup
source-if-exists "$HOME/.gchup/env"

# conda
source-if-exists "$HOME/miniforge3/etc/profile.d/conda.sh"

# open ai keys
export OPENAI_API_KEY_FILE="$HOME/.openai-api-key"
[ -s $OPENAI_API_KEY_FILE ] && export OPENAI_API_KEY=$(cat $OPENAI_API_KEY_FILE)

# tmux on konsole
export LANG=C.UTF-8

