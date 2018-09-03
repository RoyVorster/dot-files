[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# Rust cargo
export PATH="$HOME/.cargo/bin:$PATH"

# Include python scripts folder
export PATH="$PATH:$HOME/.bin"

# Get all files from the cfg_bashrc directory
if [[ -d $HOME/.cfg_bashrc ]] ; then
  for cfg_files in "$HOME"/.cfg_bashrc/*.bash ; do
    . "$cfg_files"
  done
fi

unset -v cfg_files
