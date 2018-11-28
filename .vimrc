set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

syntax on
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set hlsearch

set background=dark
set number
set shiftwidth=2
set expandtab
set tabstop=2
set background=dark
set t_Co=256

autocmd BufEnter * lcd %:p:h
autocmd StdinReadPre * let s:std_in=1
