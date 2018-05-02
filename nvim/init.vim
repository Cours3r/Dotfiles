" Plug {{{
call plug#begin('~/.config/nvim/plugged')

" Autocomplete
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
" Plug 'roxma/nvim-completion-manager'
"Plug 'hdima/python-support'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Plug 'c-brenn/phoenix.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go', {'do':':GoUpdateBinaries'}
Plug 'janko-m/vim-test'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/vader.vim'
Plug 'elmcast/elm-vim'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
" Plug 'mattn/emmet-vim'

" Async linting
Plug 'neomake/neomake'

" Vim, Tmux, and Airline theming
Plug 'vim-airline/vim-airline'

"Plug 'dracula/vim'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'w0ng/vim-hybrid'
Plug 'arcticicestudio/nord-vim'
"Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'

" Configure alchemist for Elixir development
" Plug 'slashmili/alchemist.vim'

" Install polyglot for language plugins
Plug 'sheerun/vim-polyglot'

call plug#end()
" }}}

" Colors/Theme {{{
set background=dark
"let g:dracula_colorterm = 0
"colorscheme gruvbox
colorscheme nord
" set termguicolors
"let g:dracula_italic = 0
" }}}


" Basic Config {{{
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
let mapleader = ","

" Fix indentation in file
map <leader>i mmgg=G`m<CR>

" }}}

" Automatically start language servers.
let g:LanguageClient_autoStart = 1
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

let python_hightlight_all = 1

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

" vim-test {{{
let test#strategy = "neovim"

" Add hotkeys for vim-test
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>T :TestNearest<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
" }}}

" vim-polyglot {{{
let g:jsx_ext_required = 0
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

" Ctrlp {{{

let g:ctrlp_match_window = "bottom,order:btt"   " Order file matches from bottom to top
let g:ctrlp_dont_split = 'netrw'                " Prevent from opening a new window
let g:ctrlp_working_path_mode = 0               " Don't change working directory based on current buffer

if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
else
  " Use the silver search if ripgrep is missing
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g "" -U'
  let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp' " Persist the CtrlP cache
  let g:ctrlp_use_caching = 1                     " Enable CtrlP caching
endif

" }}}

" Auto-commands {{{
if has("autocmd")
	" always start terminal in insert mode
	" autocmd BufWinEnter,WinEnter term://* startinsert

	" Enable auto-completion
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

	autocmd FileType python set ai ts=4 sw=4 noet autowrite

	" Set Syntax Highlighting for odd file types
	augroup filetypedetect
		au BufNewFile,BufRead .gitconfig,.git/* set noet
		au BufNewFile,BufRead Dockerfile* setf dockerfile
		au BufNewFile,BufRead *.fizz setf fizz
		au BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
		au BufNewFile,BufRead .nginx.conf*,nginx.conf* setf nginx
	augroup END

	" Restore cursor position
	autocmd BufReadPost *
				\ if line("'\"") > 1 && line("'\"") <= line("$") |
				\   exe "normal! g`\"" |
				\ endif
endif
" }}}





