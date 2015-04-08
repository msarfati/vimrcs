" .vimrc
" See: http://vimdoc.sourceforge.net/htmldoc/options.html for details

" For multi-byte character support (CJK support, for example):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
       
set tabstop=4       
set shiftwidth=4    
set expandtab       
set showmatch       
set hlsearch        
set incsearch       
set ignorecase      
set smartcase       
set backspace=2     
set autoindent      
"set textwidth=79   
set formatoptions=c,q,r
set ruler
set background=dark
"set mouse=a
 
filetype plugin indent on
syntax on
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_ca
autocmd BufRead,BufNewFile *.md set linebreak
autocmd BufRead,BufNewFile *.md set breakat=\ 

nnoremap j gj
nnoremap k gk
