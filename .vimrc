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
set listchars=tab:>\ ,extends:<,trail:-
set laststatus=2
set directory=/tmp
set wildmode=full:list
set wildmenu
set statusline=[%L]\ %t\ %y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%r%m%=%c:%l/%L


nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
vnoremap <Space> :s/ *$//<CR>:nohlsearch<CR>
nnoremap tl :FriendsTwitter<CR>
nnoremap tm :MentionsTwitter<CR>
nnoremap tn :NextTwitter<CR>

" Unite
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
nnoremap <silent> <Space>y :<C-u>Unite history/yank<CR>
nnoremap <silent> <Space>b :<C-u>Unite buffer<CR>
nnoremap <silent> <Space>r :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> <Space>ff :<C-u>Unite file buffer<CR>
nnoremap <silent> <Space>ft :<C-u>Unite file buffer -tab<CR>
nnoremap <silent> <Space>t :<C-u>Unite tab buffer<CR>


" commentout.vim
" lhs comments
vmap ,# :s/^/#/<CR>:nohlsearch<CR>
vmap ,/ :s/^/\/\//<CR>:nohlsearch<CR>
vmap ," :s/^/\"/<CR>:nohlsearch<CR>
vmap ,; :s/^/;/<CR>:nohlsearch<CR>
vmap ,- :s/^/--/<CR>:nohlsearch<CR>
vmap ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>:nohlsearch<CR>


" Erroneous operation measures
vmap u <Nop>
vmap U <Nop>

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
Bundle 'vim-scripts/TwitVim'
Bundle 'rhysd/clever-f.vim'
Bundle 'Shougo/neosnippet.vim'
Bundle 'glidenote/serverspec-snippets'
Bundle 'thinca/vim-quickrun'
Bundle 'Shougo/unite.vim'

filetype plugin indent on

nnoremap ec :EvervimCreateNote<CR>
nnoremap el :EvervimNotebookList<CR>
nnoremap er :EvervimReloadPref<CR>


" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
    set conceallevel=2 concealcursor=i
endif

let g:neosnippet#snippets_directory = [
            \'~/.vim/snippets',
            \'~/.vim/bundle/serverspec-snippets',
            \]

:set ft=ruby.serverspec
