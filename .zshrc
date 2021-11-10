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

# Path variables
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/julia/bin"

# Source zsh config files
source $ZSH/oh-my-zsh.sh

for f in ~/.cfg_zshrc/**/*.zsh; do source $f; done
unset -v f

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR=$(which nvim)

# Pyenv
export PYENV_ROOT="$HOME/.pyenv" 
export PATH="$PATH:$PYENV_ROOT/bin" 
eval "$(pyenv init --path)" 
eval "$(pyenv init -)"

# NVM
 export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# ghcup
[ -f "/Users/rvorster/.ghcup/env" ] && source "/Users/rvorster/.ghcup/env"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/rvorster/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/rvorster/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/rvorster/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/rvorster/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

