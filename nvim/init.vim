let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set shell=bash
set background=dark

let g:gruvbox_bold=0
let g:gruvbox_underline=0
let g:gruvbox_undercurl=0
let g:gruvbox_contrast_dark='hard'

let base16colorspace=256

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set number
set showcmd
set cursorline

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle/")
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'mhinz/vim-startify'
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'ajh17/Spacegray.vim'
call vundle#end()
filetype plugin indent on
colorscheme gruvbox

set lazyredraw
set list
set showmatch

set foldenable
set foldlevelstart=10
set foldnestmax=10

set backup
set backupdir=~/.tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.tmp
set writebackup

let python_highlight_all=1
