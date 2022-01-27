[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# Get all files from the cfg_bashrc directory
if [[ -d $HOME/.cfg_bashrc ]] ; then
    for cfg_files in "$HOME"/.cfg_bashrc/*.bash ; do . "$cfg_files" done
    unset -v cfg_files
fi

# Use ZSH aliases as well
source $HOME/.cfg_zshrc/aliases.zsh
