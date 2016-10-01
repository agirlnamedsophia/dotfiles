" Gotta be first
set nocompatible
execute pathogen#infect()
let NERDTreeShowHidden=1
" --- General Settings ---
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set hlsearch

syntax on
set background=dark
colorscheme solarized
set number
set shiftwidth=2
set expandtab
set tabstop=2
set background=dark
set t_Co=256

"
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
"

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd BufEnter * lcd %:p:h
autocmd VimEnter * if &filetype !=# 'gc' | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1

map <C-n> :NERDTreeToggle<CR>
