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

export PATH="$PATH:$HOME/julia/bin"

# Source zsh config files
source $ZSH/oh-my-zsh.sh

for f in ~/.cfg_zshrc/**/*.zsh; do
    source $f
done

unset -v f

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR=$(which nvim)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/rvorster/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/rvorster/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/rvorster/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/rvorster/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

