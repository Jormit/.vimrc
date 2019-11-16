syntax on

let mapleader = ","
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set number
set wildmenu
set lazyredraw
set showmatch
set relativenumber

" Case insensitive search.
set ignorecase
set smartcase

set incsearch
set hlsearch

" Maintain undo history between sessions
set undofile 

" Turn off highlighting with enter.
nnoremap <CR> :noh<CR><CR>
set laststatus=2

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Vundle
set nocompatible
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomtom/tcomment_vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'ajh17/vimcompletesme'
Plugin 'ludwig/split-manpage.vim'
Plugin 'kshenoy/vim-signature'
call vundle#end()
color aqua
filetype plugin indent on


