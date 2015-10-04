execute pathogen#infect()
set nocompatible
syntax on
set autoindent
set shiftwidth=2
filetype plugin indent on
colorscheme industry
let g:tmuxcomplete#trigger = 'completefunc'
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
