set nocompatible "vi非互換モード"
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/neobundle.vim.git
    call neobundle#rc(expand('~/.bundle'))
endif

NeoBundle 'http://github.com/soh335/vim-symfony.git'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'git://github.com/scrooloose/nerdtree.git'
NeoBundle 'https://github.com/Shougo/vimfiler.git'
NeoBundle 'https://github.com/Shougo/unite.vim.git'
NeoBundle 'https://github.com/Shougo/vimproc.git'
NeoBundle 'https://github.com/Shougo/vimshell.git'
" NeoBundle 'git://github.com/fholgado/minibufexpl.vim.git'
" NeoBundle 'git://github.com/vim-scripts/buftabs.git'
" NeoBundle 'git://github.com/scrooloose/syntastic.git'

filetype plugin on
filetype indent on

let g:buftabs_only_basename=1
let g:buftabs_in_statusline=1
let g:buftabs_active_highlight_group="Visual"
let g:buftabs_marker_modified = "+"

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBuffs = 1

command Vf VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit

" 行番号を非表示 (number:表示)
set number
" ルーラーを表示 (noruler:非表示)
set ruler
" タブや改行を表示 (list:表示)
set nolist
set autoindent
set list
set listchars=eol:↩,trail:-,tab:>\ ,extends:<
" set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
"タブの代わりに空白文字挿入
set expandtab
"タブは半角4文字分のスペース
set ts=4 sw=4 sts=0
set shiftwidth=4
set showmatch
"高度なインデント
set smartindent
set smarttab
set tabstop=4
set whichwrap=b,s,h,l,<,>,[,]
"検索時に大文字小文字を区別しない
set ic
set clipboard=unnamed

autocmd FileType php :set dictionary=~/.vim/dict/php_func.dict
set tags=~/.vim/tags/symfony.tags,~/.vim/tags/symfonycode.tags
set mouse=niv
set clipboard=unnamed

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" 保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge
" 保存時にtabをスペースに変換する
autocmd BufWritePre * :%s/\t/ /ge

if has('syntax')
    syntax enable
    set t_Co=256
    "colorscheme desert
    "colorscheme zenburn
    let g:solarized_termcolors=16
    let g:solarized_termtrans=0
    let g:solarized_degrade=0
    let g:solarized_bold=1
    let g:solarized_underline=1
    let g:solarized_italic=1
    let g:solarized_contrast='normal'
    let g:solarized_visibility='normal'
    let g:solarized_termcolors=256
    set background=dark
    colorscheme solarized
endif


