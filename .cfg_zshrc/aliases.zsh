alias conf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias l='ls -al'
alias grep='grep --color=auto'
alias cls='clear'

alias R="/opt/homebrew/opt/r/bin/R --vanilla"

alias matlab="/Applications/MATLAB_R2021b.app/bin/matlab -nodesktop -nojvm"

alias rsync='rsync -av'

alias esp-init='. ~/esp/esp-idf/export.sh'

alias nb='jupyter notebook --no-browser --port 8081'
alias nb-lab='jupyter lab --no-browser --port 8081'

alias ibrew="arch -x86_64 /usr/local/bin/brew"

# Git aliases
alias gl='git pull'
alias ga='git add'
alias gp='git push'
alias gd='git diff'
alias gc='git commit'
alias gco='git checkout'
alias gst='git status'
alias gstu='git status -uno'
alias grt='cd $(git rev-parse --show-toplevel)'
alias glo='git log --graph --decorate --all'

