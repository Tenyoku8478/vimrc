""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle & Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" === Plugins must be added below here ===

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" status line
Plugin 'itchyny/lightline.vim'

" === Plugins must be added above here ===
call vundle#end()
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=100

" The internal encoding of vim
set encoding=utf-8

" Encoding order when open an existing file
set fileencodings=utf-8,big5

" Default encoding when open a new file
set fileencoding=utf-8


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme desert
syntax on
set number
set wrap linebreak
set colorcolumn=81

" Always display status line
set laststatus=2

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editor
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent width when using '>'
set shiftwidth=2

" The width of a tab character
set tabstop=4

" Insert spaces instead when hitting tab
set expandtab

" The number of spaces to be inserted when hitting tab
set softtabstop=2
set autoindent
set hlsearch
set incsearch

" Enable mouse
set mouse=a


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language-Specific Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType make setlocal noexpandtab
autocmd FileType text,netrw setlocal colorcolumn=
autocmd BufNewFile,BufRead * if empty(&filetype) | execute 'setlocal colorcolumn='
