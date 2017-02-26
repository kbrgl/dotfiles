let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if has("termguicolors")
    set termguicolors
endif
set shell=bash
let transparent=1

let g:gruvbox_bold=0
let g:gruvbox_underline=0
let g:gruvbox_undercurl=0
let g:gruvbox_contrast_dark='hard'

let g:airline_powerline_fonts = 1

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

map <j> <gj>
map <k> <gk>
map <l> <gl>
map <h> <gh>

filetype on

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle/")
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'ajh17/Spacegray.vim'
Plugin 'sjl/badwolf'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'
Plugin 'fatih/vim-go'
Plugin 'vim-scripts/c.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'cespare/vim-toml'
Plugin 'fxn/vim-monochrome'
Plugin 'w0ng/vim-hybrid'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'rakr/vim-one'
call vundle#end()
filetype plugin indent on
colorscheme spacegray

if transparent && !has("gui_vimr")
    au ColorScheme * hi Normal ctermbg=none guibg=none
    au ColorScheme * hi NonText ctermbg=none guibg=none
    au ColorScheme * hi LineNr ctermbg=none guibg=none
    au ColorScheme * hi Normal ctermbg=none guibg=none
    au ColorScheme * hi Statement ctermbg=none guibg=none
    au ColorScheme * hi Title ctermbg=none guibg=none
    au ColorScheme * hi Todo ctermbg=none guibg=none
    au ColorScheme * hi Underlined ctermbg=none guibg=none
    au ColorScheme * hi ErrorMsg ctermbg=none guibg=none
    au ColorScheme * hi CursorLine ctermbg=none guibg=none
    au ColorScheme * hi CursorColumn ctermbg=none guibg=none
endif

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

function KernelStyle()
    set tabstop=8
    set softtabstop=8
    set shiftwidth=8
    set noexpandtab
endfunction

au BufNewFile,BufRead ~/kernels/* call KernelStyle()
