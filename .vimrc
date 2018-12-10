" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
 My basic .vimrc

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et nocompatible

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
iletype plugin indent on

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
yntax on

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et hidden

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et wildmenu

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et showcmd

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et hlsearch

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et ignorecase

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et smartcase

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et backspace=indent,eol,start

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et autoindent

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et nostartofline

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et ruler

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et mouse=a

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et number

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et tabstop=4

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et softtabstop=4

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et shiftwidth=4

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et noexpandtab

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et number

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et termguicolors " Enable true color support.

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
et &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
utocmd FileType * set noexpandtab

" plug {{{
call plug#begin('~/.vimrc/plugged')

Plug 'fatih/vim-go',{'do':'GoUpdatedBinaries'}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'					" markdown integration
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chrisbra/csv.vim'							" csv
Plug 'junegunn/goyo.vim'						" focus
Plug 'PotatoesMaster/i4-vim-syntax'

" Themes
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()
" }}}

" colors {{{
set background=dark

"colorscheme dracula
"colorscheme gruvbox
colorscheme nord

" set termguicolors

"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
" }}}

" general {{{

set nocompatible

syntax on
" filetype off
filetype plugin on

set ttyfast
set encoding=utf-8
set autoread

set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set nostartofline
set ruler
set mouse=a
set number

" Set the terminal's title
set title

set tabstop=4
" set softtabstop=0
set shiftwidth=4
set noexpandtab
set autoindent
autocmd filetype * set noexpandtab

vnoremap <leader>p "_dP

set list listchars=tab:»\ ,trail:·

" Set leader to comma
let mapleader = " "

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" splits
set splitbelow
set splitright

" }}}

" st {{{
" set termguicolors " Enable true color support.
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" }}}

let g:python_highlight_all = 1

" Send all vim registers to the clipboard
set clipboard=unnamed

" vim-go {{{
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_snippet_engine = "neosnippet"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" }}}

" Strip whitespace on save
fun! <SID>StripTrailingWhitespaces()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" Do the business:
	%s/\s\+$//e
	" Clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfun

" autocmds {{{

autocmd FileType python set ai ts=4 sw=4 noet autowrite
autocmd FileType csv ArrangeColumn

" Restore cursor position
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif

"}}}
