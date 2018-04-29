" My basic .vimrc
set nocompatible

syntax on
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" let g:dracula_italic = 0
let g:dracula_colorterm=0
color dracula
" highlight Normal ctermbg=NONE term=NONE

let g:python_highlight_all = 1
vnoremap <leader>p "_dP
