" basic
set number
set expandtab
set tabstop=2
set softtabstop=0
set shiftwidth=2
set showtabline=1

" plugins
call plug#begin(stdpath('data'))
Plug 'vimwiki/vimwiki'
Plug 'conornewton/vim-pandoc-markdown-preview'
call plug#end()

" vimwiki
" set concealcursor=nc
let g:vimwiki_global_ext = 0
set nocompatible
filetype plugin on
syntax on
let g:vimwiki_list = [{
  \ 'path'    : '~/doc/wiki',
  \ 'syntax'  : 'markdown',
  \ 'ext'     : '.md'
\ }]

" temporary fix for #11330
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"
