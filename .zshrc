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
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.bin/bin"

export PATH="$PATH:$HOME/julia/bin"

# Source zsh config files
source $ZSH/oh-my-zsh.sh

for f in ~/.cfg_zshrc/**/*.zsh; do
    source $f
done

unset -v f

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR=$(which nvim)

# Pyenv
export PYENV_ROOT="$HOME/.pyenv" 
export PATH="$PYENV_ROOT/bin:$PATH" 
eval "$(pyenv init --path)" 
eval "$(pyenv init -)"

