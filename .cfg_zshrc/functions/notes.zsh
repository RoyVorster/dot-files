#!/bin/zsh

export d="$HOME/notes";

# Edit note
function ne {
    f=$(find $d -depth -mindepth 1 | fzf --height 30% -m --reverse --query "$1")
    if [[ $f ]]; then nvim $f; fi
}

# New note
function nn {
    if [[ $# -eq 0 ]]; then echo 'Name required: nn [NAME] [OPT:DIR]' && return; fi
    if [[ $2 -ne 0 ]]; then d=$d/$2; fi

    nvim $d/$(date +'%Y-%m-%d')-$1.md
}

