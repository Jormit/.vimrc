syntax on

let mapleader = ","

" Spaces instead of tabs.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set number
set wildmenu
set lazyredraw
set showmatch
set relativenumber

set nocompatible
set backspace=indent,eol,start

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

" Execute current line as shell command and place output in buffer.
noremap Q :exec 'r!'.getline('.')<CR>

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'c'

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
Plugin 'kshenoy/vim-signature'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
call vundle#end()
color aqua
filetype plugin indent on
