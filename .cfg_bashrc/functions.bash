# For bumblebee
function opt { optirun $1; exit; }

# Link python script to $HOME/.bin
function link_py { ln -s $1 $HOME/.bin/$2; }