# Oh my zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bira_custom"
DISABLE_AUTO_UPDATE="true"
CASE_SENSITIVE="false"

plugins=(
    gitfast
    cabal
    python
)

source $ZSH/oh-my-zsh.sh

# Path variables
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/julia/bin:$PATH"

export GOPATH="$HOME/go/"
export PATH="$GOPATH/bin:$PATH"

# Source zsh config files
for f in ~/.cfg_zshrc/**/*.zsh; do source $f; done
unset -v f

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR=$(which nvim)

# Pyenv
if [[ $OSTYPE == 'darwin'* ]]; then
    export PYENV_ROOT="$HOME/.pyenv" 
    export PATH="$PATH:$PYENV_ROOT/bin" 
    eval "$(pyenv init --path)" 
    eval "$(pyenv init -)"
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh" --no-use

# ghcup
[ -s "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"

# conda
[ -d "$HOME/miniforge3/" ] && source "$HOME/miniforge3/etc/profile.d/conda.sh"

# open ai keys
export OPENAI_API_KEY_FILE="$HOME/.openai-api-key"
[ -s $OPENAI_API_KEY_FILE ] && export OPENAI_API_KEY=$(cat $OPENAI_API_KEY_FILE)

