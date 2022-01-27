" Basics
syntax on
filetype plugin indent on

" Settings
set shell=/usr/bin/zsh
set nu rnu
set expandtab
set path=.,**
set ai
set smartindent
set nowrap
set smartcase
set nobackup
set noswapfile
set incsearch
set linebreak
set cmdheight=1
set mouse=a

set shiftwidth=4
set softtabstop=4 tabstop=4

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=20

" nice remaps + macros
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

noremap <F3> :put=strftime('%Y-%m-%d %X')<CR>
noremap <C-p> :GFiles<CR>
noremap <C-j> 10j
noremap <C-k> 10k

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neovimhaskell/haskell-vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-gitgutter'

call plug#end()

colorscheme gruvbox
set background=dark

set termguicolors
