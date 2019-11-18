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

set list
set listchars=tab:→\ ,trail:·,eol:¬,extends:…,precedes:…

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

" Drag visuals setup
runtime plugin/dragvisuals.vim
vmap <expr> <LEFT>  DVB_Drag('left')
vmap <expr> <RIGHT> DVB_Drag('right')
vmap <expr> <DOWN>  DVB_Drag('down')
vmap <expr> <UP>    DVB_Drag('up')
vmap <expr>  D      DVB_Duplicate() 
let g:DVB_TrimWS = 1
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
Plugin 'ludwig/split-manpage.vim'
Plugin 'jondkinney/dragvisuals.vim'
call vundle#end()
colorscheme 256-grayvim 
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
set bg=dark
filetype plugin indent on
