# Update window size dynamically
shopt -s checkwinsize

# File completion 
bind "set completion-ignore-case on"
bind "set completion-map-case on"

# Spelling errors in tab-completion and cd
shopt -s dirspell 2> /dev/null
shopt -s cdspell 2> /dev/null

# Extend regexes
shopt -s extglob

# CD into directories
CDPATH=".:$HOME/Documents/"
shopt -s cdable_vars