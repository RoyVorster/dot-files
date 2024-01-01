# Dot files
My config files, I use this on mac/linux.

## Setup
[Relevant HN thread](https://news.ycombinator.com/item?id=11071754) and [Atlassian page](https://www.atlassian.com/git/tutorials/dotfiles).

```
git clone --bare git@github.com:/RoyVorster/dot-files.git $HOME/.cfg

# Intermediate git alias
alias conf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
conf config status.showUntrackedFiles no

# Vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Run `conf checkout` and fix conflicts.

