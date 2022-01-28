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
export PATH="$PATH:$HOME/julia/bin"

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
[ -f "/Users/rvorster/.ghcup/env" ] && source "/Users/rvorster/.ghcup/env"

# conda
source "$HOME/miniforge3/etc/profile.d/conda.sh"

