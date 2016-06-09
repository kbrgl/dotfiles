colorscheme spacegray

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set number
set showcmd
set cursorline

filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
call vundle#end()
filetype plugin indent on

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
