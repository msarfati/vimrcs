" Vundle and Plugin settings
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Keep Plugin commands between vundle#begin/end.
Plugin 'gmarik/Vundle.vim'

""""" List of Plugins
""" Feature Plugins
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'powerline/powerline'
Plugin 'scrooloose/syntastic'
""" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
""" Python
"Plugin 'klen/python-mode'
Plugin 'nvie/vim-flake8'
""" Markdown
Plugin 'gabrielelana/vim-markdown'
Plugin 'suan/vim-instant-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
"runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set nu
set hls
set hidden             " Hide buffers when they are abandoned
set noet ci pi sts=0 sw=4 ts=4
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Reload vimrc immediately after save
autocmd! bufwritepost .vimrc source %

" Markdown mode
filetype plugin indent on
syntax on
let g:instant_markdown_autostart = 0
let g:instant_markdown_slow = 1
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_ca
autocmd BufRead,BufNewFile *.md set linebreak
autocmd BufRead,BufNewFile *.md set breakat=\

" Python mode
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

""" Key remaps -- Handles moving up and down
nnoremap j gj
nnoremap k gk
let mapleader=","
vnoremap < <gv
vnoremap > >gv
set clipboard=unnamedplus
" Quicksave
noremap <Leader>s :update<CR>
noremap <Leader>q :q<CR>

" Menu completion
set wildmenu
set wcm=<TAB>
set wildmode=longest:full,full

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile
