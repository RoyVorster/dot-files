[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

export EDITOR=$(which nvim)

# Source bash config files
for f in ~/.cfg_bashrc/*.bash; do source $f; done
unset -v f

# Use ZSH aliases
source $HOME/.cfg_zshrc/aliases.zsh
