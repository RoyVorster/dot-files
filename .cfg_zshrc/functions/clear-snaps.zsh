#!/bin/zsh

# Clear old snaps, these things can take up a lot of space
function clear-snaps {
    sudo snap list --all | awk '/disabled/{print $1, $3}' | \
    while read snapname revision; do
        sudo snap remove "$snapname" --revision="$revision"
    done
}
