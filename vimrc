set nocompatible
filetype off
set t_Co=256

set encoding=utf-8
scriptencoding utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'honza/vim-snippets'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'sickill/vim-monokai'
"Plugin 'mhinz/vim-startify'
Plugin 'itchyny/lightline.vim'

let g:lightline = {
	\ 'colorscheme': 'landscape',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\		[ 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component': {
	\   'readonly': '%{&readonly?" ":""}',
	\ },
	\ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
	\ 'subseparator': { 'left': "\ue0b1", 'right': '«' }
	\ }

" airline
"let g:airline_theme='dark'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_inactive_collapse=1

syntax enable
"colorscheme monokai

"if !exists('g:airline_symbols')
"	let g:airline_symbols = {}
"endif
" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = '∄'
"let g:airline_symbols.whitespace = 'Ξ'		 

let g:javascript_plugin_jsdoc = 1

let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"

set nowrap

au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict


set laststatus=2

" colorscheme ron

call vundle#end()
filetype plugin indent on

