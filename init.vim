" Configuration file for nvim

" Vim-Plug
call plug#begin('~/.local/share/nvim/plugged') " Change path to ~/.vim/plugged for vim
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'hashivim/vim-packer'
Plug 'hashivim/vim-terraform'
Plug 'hashivim/vim-vagrant'
Plug 'tpope/vim-surround'
call plug#end()

" Theme details
syntax enable
syntax on
set background=dark
colorscheme Tomorrow-Night
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" let &t_Co=256

" Line number options
set number
set relativenumber
set nowrap

" Backup options
set nobackup
set noswapfile

" Open NERDTREE on start
autocmd vimenter * NERDTree

" Search options
set incsearch
set ignorecase
set smartcase
set nohlsearch

" Indentation
set autoindent
set tabstop=4 noexpandtab
set shiftwidth=4
filetype plugin indent on

set cursorline
set history=1000
set backspace=indent,eol,start

" Powerline font
let g:airline_powerline_fonts = 1
