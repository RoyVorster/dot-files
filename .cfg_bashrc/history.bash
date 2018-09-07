shopt -s histappend
shopt -s cmdhist

PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ;} history -a"

HISTSIZE=500000
HISTFILESIZE=100000
HISTCONTROL="erasedupts:ignoreboth"

export HISTIGNORE="&:exit:cls:clear"