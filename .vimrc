set nu
colors koehler
set tabstop=4
set expandtab        " Expand tabs to spaces
set ai               " Set autoindent
set noswapfile       " no swap files

syntax on
filetype on
filetype indent on   " Makes indentation different per file, good with html

""" Key Bindings
map <F2> :!make <CR>
