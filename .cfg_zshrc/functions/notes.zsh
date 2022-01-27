#!/bin/zsh

d='$HOME/fun/notes/'
alias note-dir='cd $d'

function new-note-dir {
    newdir=$(date +'%Y-%m-%d')
    mkcd "$d/$newdir"
}
