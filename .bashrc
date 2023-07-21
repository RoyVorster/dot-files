[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ;} history -a"

export EDITOR=$(which nvim)

# Source aliases etc...
for f in $(find "$HOME/.shell_config/" -type f); do source $f; done

# ROS
rospath="/opt/ros/melodic/setup.bash"
source-if-exists $rospath

# FZF
source-if-exists "$HOME/.fzf.bash"

# Rust
source-if-exists "$HOME/.cargo/env"

# History settings
shopt -s histappend
shopt -s cmdhist
HISTSIZE=500000
HISTFILESIZE=100000
HISTCONTROL="erasedupts:ignoreboth"
export HISTIGNORE="&:exit:cls:clear"
