syntax on
colorscheme rupza

let mapleader = ","

set tabstop=4
set softtabstop=4
set expandtab

set number
set wildmenu
set lazyredraw
set showmatch

set incsearch
set hlsearch
nnoremap <CR> :noh<CR><CR>
set laststatus=2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomtom/tcomment_vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'vim-syntastic/syntastic'
call vundle#end()
filetype plugin indent on
