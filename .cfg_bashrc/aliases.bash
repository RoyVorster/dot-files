# Some aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias subl=/opt/sublime_text_3/sublime_text
alias edit='subl'

alias %=' '

alias cls='clear'

alias sus='systemctl suspend; exit'
alias hib='systemctl hibernate -i; exit'

alias matlab='$HOME/MATLAB/2018a/bin/matlab -softwareopengl'
alias matlabprim='primusrun $HOME/MATLAB/2018a/bin/matlab -softwareopengl'

alias stm='$HOME/SystemWorkbench/eclipse'
alias stmcube='$HOME/STM32CubeMX/STM32CubeMX'

# alias note='$HOME/dynalist/dynalist-1.0.3/dynalist'

# Git aliases
alias gl='git pull'
alias ga='git add'
alias gp='git push'
alias gd='git diff'
alias gc='git commit'
alias gco='git checkout'
alias gst='git status'
alias grt='cd $(git rev-parse --show-toplevel)'

# Dotfiles git command
alias config='/usr/bin/git --git-dir=/home/rvorster/.cfg/ --work-tree=/home/rvorster'
