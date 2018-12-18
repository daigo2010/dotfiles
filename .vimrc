syntax on
colorscheme my-color

set ts=4 sw=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent
set backspace=indent,eol,start
set nobomb

autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.blade.php setlocal tabstop=2 softtabstop=2 shiftwidth=2

set encoding=utf-8
set fileencodings=utf-8,utf-16

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

" php-doc
inoremap <C-c> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-c> :call PhpDocSingle()<CR>
vnoremap <C-c> :call PhpDocRange()<CR>

" vim blade
" Define some single Blade directives. This variable is used for highlighting
" only.
let g:blade_custom_directives = ['datetime', 'javascript']
"
" " Define pairs of Blade directives. This variable is used for highlighting
" and indentation.
" let g:blade_custom_directives_pairs = {
"       \   'markdown': 'endmarkdown',
"             \   'cache': 'endcache',
"                   \ }

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

" quate automation
""inoremap { {}<LEFT>
""inoremap [ []<LEFT>
""inoremap ( ()<LEFT>
""inoremap " ""<LEFT>
""inoremap ' ''<LEFT>
""vnoremap { "zdi^V{<C-R>z}<ESC>
""vnoremap [ "zdi^V[<C-R>z]<ESC>
""vnoremap ( "zdi^V(<C-R>z)<ESC>
""vnoremap " "zdi^V"<C-R>z^V"<ESC>
""vnoremap ' "zdi'<C-R>z'<ESC>

" golang settings
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
autocmd FileType go autocmd BufWritePre <buffer> Fmt
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview

" vundle
" install  > :BundleInstall
" clean up > :BundleClean
set nocompatible
filetype off
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'php.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'taichouchou2/surround.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'taichouchou2/vim-javascript'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tomlion/vim-solidity'
call neobundle#end()

filetype plugin indent on

