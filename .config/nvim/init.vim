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
call plug#end()

" vimwiki
set concealcursor=nc
set nocompatible
filetype plugin on
syntax on
let g:vimwiki_list = [{
  \ 'path'    : '~/doc/wiki',
  \ 'syntax'  : 'markdown',
  \ 'ext'     : '.md'
\ }]

" keep selection after indenting
vnoremap < <gv
vnoremap > >gv
