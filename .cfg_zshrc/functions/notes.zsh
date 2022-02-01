#!/bin/zsh

export NOTE_DIR="$HOME/notes";

# List notes
function nls {
    find $NOTE_DIR -type d -or -type f -name "*.md" -or -not -path '*.*' -depth -mindepth 1
}

# Open random note
function nr {
    nvim $(nls | sort -R | tail -n 1)
}

# Open note
function ne {
    f=$(nls | fzf --height 30% -m --reverse --query "$1")
    if [[ $f ]]; then nvim $f; fi
}

# New note
function nn {
    if [[ $# -eq 0 ]]; then echo 'Name required: nn [NAME] [OPT:DIR]' && return; fi

    local dd=$NOTE_DIR
    if [[ ! -z $2 ]]; then; dd=$dd/$2; fi
    mkdir -p $dd

    nvim $dd/$(date +'%Y-%m-%d')-$1.md
}

