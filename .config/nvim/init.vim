"""""""""""""""""""""""""
""""    vim-plug     """"
"""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')
 
" Others

Plug 'vim-airline/vim-airline' 
Plug 'nhooyr/neoman.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'airblade/vim-rooter'
Plug 'wellle/tmux-complete.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
Plug 'pearofducks/ansible-vim'
Plug 'freitass/todo.txt-vim'
Plug 'chrisbra/csv.vim'
Plug 'mattn/emmet-vim'
Plug 'mattn/webapi-vim'
Plug 'Shutnik/jshint2.vim'
Plug 'lervag/vimtex'




 
" Java development
 
Plug 'sbdchd/neoformat'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neomake/neomake'
 
" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""
""  confort 		"
"""""""""""""""""""""""""

colorscheme delek
set shiftwidth=2
set tabstop=2 
set softtabstop=2
 
"""""""""""""""""""""""""
""""    deoplete     """"
"""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
let g:deoplete#sources = {}
let g:deoplete#sources._ = []
let g:deoplete#file#enable_buffer_path = 1
 
 
"""""""""""""""""""""""""
""""  Java Complete  """"
"""""""""""""""""""""""""
autocmd FileType java setlocal omnifunc=javacomplete#Complete
 
"""""""""""""""""""""""""
""""     neomake     """"
"""""""""""""""""""""""""
autocmd! BufWritePost,BufEnter * Neomake
 
"""""""""""""""""""""""""
""""     neoformat   """"
"""""""""""""""""""""""""
augroup astyle
  autocmd!
  autocmd BufWritePre * Neoformat
augroup END

""""""""""""""""""""""""
" config unite with ag "
""""""""""""""""""""""""
if executable('hw')
    " Use hw (highway)
    " https://github.com/tkengo/highway
    let g:unite_source_grep_command = 'hw'
    let g:unite_source_grep_default_opts = '--no-group --no-color'
    let g:unite_source_grep_recursive_opt = ''
elseif executable('ag')
    " Use ag (the silver searcher)
    " https://github.com/ggreer/the_silver_searcher
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts =
                \ '-i --line-numbers --nocolor ' .
                \ '--nogroup --hidden --ignore ' .
                \ '''.hg'' --ignore ''.svn'' --ignore' .
                \ ' ''.git'' --ignore ''.bzr'''
    let g:unite_source_grep_recursive_opt = ''
elseif executable('pt')
    " Use pt (the platinum searcher)
    " https://github.com/monochromegane/the_platinum_searcher
    let g:unite_source_grep_command = 'pt'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor'
    let g:unite_source_grep_recursive_opt = ''
elseif executable('ack-grep')
    " Use ack
    " http://beyondgrep.com/
    let g:unite_source_grep_command = 'ack-grep'
    let g:unite_source_grep_default_opts =
                \ '-i --no-heading --no-color -k -H'
    let g:unite_source_grep_recursive_opt = ''
elseif executable('ack')
    let g:unite_source_grep_command = 'ack'
    let g:unite_source_grep_default_opts = '-i --no-heading' .
                \ ' --no-color -k -H'
    let g:unite_source_grep_recursive_opt = ''
elseif executable('jvgrep')
    " Use jvgrep
    " https://github.com/mattn/jvgrep
    let g:unite_source_grep_command = 'jvgrep'
    let g:unite_source_grep_default_opts =
                \ '-i --exclude ''\.(git|svn|hg|bzr)'''
    let g:unite_source_grep_recursive_opt = '-R'
elseif executable('beagrep')
    " Use beagrep
    " https://github.com/baohaojun/beagrep
    let g:unite_source_grep_command = 'beagrep'
endif

""""""""""""""""""""""""
" config vimfiler      "
""""""""""""""""""""""""
let g:vimfiler_as_default_explorer = 1
call vimfiler#custom#profile('default', 'context', {
			\ 'explorer' : 1,
			\ 'winwidth' : 30,
			\ 'winminwidth' : 30,
			\ 'toggle' : 1,
			\ 'columns' : 'type',
			\ 'auto_expand': 1,
			\ 'direction' : 'rightbelow',
			\ 'parent': 0,
			\ 'explorer_columns' : 'type',
			\ 'status' : 1,
			\ 'safe' : 0,
			\ 'split' : 1,
			\ 'hidden': 1,
			\ 'no_quit' : 1,
			\ 'force_hide' : 0,
			\ })

"""""""""""""""""""""""""
"  term navigation      "
"""""""""""""""""""""""""
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

"""""""""""""""""""""""""
"  javacomplete binding "
"""""""""""""""""""""""""
