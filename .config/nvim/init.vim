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

Plug 'morhetz/gruvbox'
Plug 'patstockwell/vim-monokai-tasty'

Plug 'preservim/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'neovimhaskell/haskell-vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()

let g:vim_monokai_tasty_italic=1
let g:airline_theme='monokai_tasty'
colorscheme vim-monokai-tasty

highlight Comment cterm=italic

" markdown
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_conceal=1
set conceallevel=2

augroup Markdown
  autocmd!
  autocmd FileType markdown set wrap
augroup END

augroup tex
  autocmd!
  autocmd FileType tex set wrap
augroup END
