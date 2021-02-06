# Make directory and cd into it in one go

function mkcd() {
    mkdir -p "$1" && cd "$1";
}