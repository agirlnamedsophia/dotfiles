" Gotta be first
set nocompatible
execute pathogen#infect()

" --- General Settings ---
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set hlsearch

syntax on
set background=dark
set number
set shiftwidth=2
set expandtab
set tabstop=2
set background=dark
set t_Co=256

autocmd BufEnter * lcd %:p:h
autocmd VimEnter * if &filetype !=# 'gc' | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
