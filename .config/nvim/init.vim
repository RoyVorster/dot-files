" Basics
syntax on
filetype plugin on

" Settings
:set shell=/usr/bin/zsh
:set rnu
:set expandtab
:set path=.,**
:set ai
:set smartindent
:set nowrap
:set smartcase
:set nobackup
:set noswapfile
:set incsearch

:set shiftwidth=4
:set softtabstop=4 tabstop=4

" :set colorcolumn=80

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=20

" Color scheme stuff
:set termguicolors

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'pangloss/vim-javascript'
Plug 'tomasr/molokai'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

colorscheme gruvbox
set background=dark
