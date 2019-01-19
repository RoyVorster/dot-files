# Extract different type file types

extr () {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2) tar -jxvf $1;;
            *.tar.gz) tar -zxvf $1;;
            *.gz) gunzip $1;;
            *.tar) tar -xvf $1;;
            *.tbz2) tar -jxvf $1;;
            *.tgz) tar -zxvf $1;;
            *.rar) unrar $1;;
            *.zip) unzip $1;;
            *.pax) cat $1 | pax -r;;
            *.pax.Z) uncompress $1 --stdout | pax -r;;
            *.Z) uncompress $1;;
            *) echo "'$1' is not a known archive" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}