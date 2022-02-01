#!/bin/zsh

export d="$HOME/notes";

# Edit note
function ne {
    f=$(find $d -type d -or -type f -name "*.md" -or -not -path '*.*' -depth -mindepth 1 \
        | fzf --height 30% -m --reverse --query "$1")
    if [[ $f ]]; then nvim $f; fi
}

# New note
function nn {
    if [[ $# -eq 0 ]]; then echo 'Name required: nn [NAME] [OPT:DIR]' && return; fi

    local dd=$d
    if [[ ! -z $2 ]]; then; dd=$d/$2; fi
    mkdir -p $dd

    nvim $dd/$(date +'%Y-%m-%d')-$1.md
}

