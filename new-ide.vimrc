" See for more details: http://stevelosh.com/blog/2010/09/coming-home-to-vim/

filetype off
execute pathogen#infect()
filetype plugin indent on

set nocompatible

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

set list
set listchars=tab:▸\ ,eol:¬

nnoremap j gj
nnoremap k gk
nnoremap ; :

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Save on losing focus
au FocusLost * :wa

" Leader-Key maps:
nnoremap <leader>v V`] "Selects text just pasted
nnoremap <leader>n :NERDTreeToggle<CR>
"nnoremap <leader>w <C-w>v<C-w>l " Split window, move to window

" Close window if only NERDtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Theming
syntax on
let g:rehash256 = 1
colorscheme molokai

