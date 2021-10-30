[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# Rust cargo
export PATH="$HOME/.cargo/bin:$PATH"

# Haskell
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

# Include python scripts folder
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.bin/bin"

# Get all files from the cfg_bashrc directory
if [[ -d $HOME/.cfg_bashrc ]] ; then
    for cfg_files in "$HOME"/.cfg_bashrc/*.bash ; do
        . "$cfg_files"
    done
fi

# Use ZSH aliases as well
source $HOME/.cfg_zshrc/aliases.zsh

unset -v cfg_files
source "$HOME/.cargo/env"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

. "$HOME/.cargo/env"
