# Oh my zsh
export ZSH="/home/rvorster/.oh-my-zsh"

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

export PYTHONPATH="$PYTHONPATH:$HOME/.local/bin"

# Source zsh config files
source $ZSH/oh-my-zsh.sh

for f in $HOME/.cfg_zshrc/**/*.zsh; do
    source $f
done

unset -v f
