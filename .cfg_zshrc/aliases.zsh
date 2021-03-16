#alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias cls='clear'

alias sus='systemctl suspend; exit'
alias hib='systemctl hibernate -i; exit'

alias matlab='$HOME/.matlab/matlab/bin/matlab -softwareopengl'

alias stm='$HOME/SystemWorkbench/eclipse'
alias stmcube='$HOME/STM32CubeMX/STM32CubeMX'

alias conf='/usr/bin/git --git-dir=/home/rvorster/.cfg/ --work-tree=/home/rvorster'

alias rsync='rsync -av'

alias esp-init='. ~/.tmp/esp-idf/export.sh'

alias nb='jupyter notebook --no-browser --port 8081'

# Git aliases
alias gl='git pull'
alias ga='git add'
alias gp='git push'
alias gd='git diff'
alias gc='git commit'
alias gco='git checkout'
alias gst='git status'
alias grt='cd $(git rev-parse --show-toplevel)'
