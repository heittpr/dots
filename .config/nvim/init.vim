" basic
set number
set expandtab
set tabstop=2
set softtabstop=0
set shiftwidth=2
set showtabline=1

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" plugins
call plug#begin(stdpath('data'))
Plug 'vimwiki/vimwiki'
Plug 'conornewton/vim-pandoc-markdown-preview'
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'vim-pandoc/vim-pandoc'
call plug#end()

" disable undescore highlighting
syn match markdownError "\w\@<=\w\@="

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
