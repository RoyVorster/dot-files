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

    local dd=$d
    if [[ ! -z $2 ]]; then echo $2; dd=$d/$2 &&  mkdir -p $dd; fi

    nvim $dd/$(date +'%Y-%m-%d')-$1.md
}

