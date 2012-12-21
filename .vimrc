syntax on
colorscheme my-color

set ts=4 sw=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent

set encoding=utf-8
set fileencoding=utf-8

"set paste
set notitle
set scrolloff=5
set number
set history=50
set list
set listchars=tab:>>,extends:<,trail:-
set laststatus=2
set directory=/tmp
set wildmode=full:list
set wildmenu
set statusline=[%L]\ %t\ %y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%r%m%=%c:%l/%L


nnoremap ls :ls<CR>
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

inoremap jj <Esc><Right>
inoremap <C-l> <Del>
inoremap <C-w> <C-o>w
inoremap <C-b> <C-o>b

" vundle
" install  > :BundleInstall
" clean up > :BundleClean
set nocompatible
filetype off
set rtp+=~/.vim/vundle.git/
call vundle#rc() " needs vim version 7.0 ~

Bundle 'php.vim'
Bundle 'groenewege/vim-less'

filetype plugin indent on
