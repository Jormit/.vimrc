syntax on

let mapleader = ","
set tabstop=4
set softtabstop=4
set expandtab

set number
set wildmenu
set lazyredraw
set showmatch

" Case insensitive search.
set ignorecase
set smartcase

set incsearch
set hlsearch

" Turn off highlighting with enter.
nnoremap <CR> :noh<CR><CR>
set laststatus=2

" Function that allows jumping between levels of same indentation.
" see: https://vi.stackexchange.com/questions/12835/how-do-i-jump-to-the-next-line-with-the-same-indent-level
function! GoToNextIndent(inc)
    " Get the cursor current position
    let currentPos = getpos('.')
    let currentLine = currentPos[1]
    let matchIndent = 0
    " Look for a line with the same indent level whithout going out of the buffer
    while !matchIndent && currentLine != line('$') + 1 && currentLine != -1 
        let currentLine += a:inc
        let matchIndent = indent(currentLine) == indent('.')
    endwhile
    " If a line is found go to this line
    if (matchIndent)
        let currentPos[1] = currentLine
        call setpos('.', currentPos)
    endif
endfunction

" Indent movement mappings.
nmap <TAB> :call GoToNextIndent(1)<CR>
nmap <S-TAB> :call GoToNextIndent(-1)<CR>

" jk in autocomplete.
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" Vundle
set nocompatible
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')filetype off
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomtom/tcomment_vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
call vundle#end()
filetype plugin indent on
