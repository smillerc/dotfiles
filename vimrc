"vundle
set nocompatible
filetype off
set t_Co=256
set encoding=utf-8
set clipboard=unnamed
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle package managment
Plugin 'VundleVim/Vundle.vim'

"Git 
Plugin 'tpope/vim-fugitive'

"Filesystem
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim' 

"Python
Plugin 'davidhalter/jedi-vim'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'

"Syntax checking
Plugin 'scrooloose/syntastic'

"Autocompletion
Plugin 'Valloric/YouCompleteMe'

"Others
Plugin 'tmhedberg/SimpylFold'
Plugin 'bling/vim-airline'

"Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

call vundle#end()

"Set plugin based on filetype
filetype plugin indent on

"-----------------
"SimpylFold options
"-----------------
let g:SimpylFold_docstring_preview = 1

"-----------------
"YCM options
"-----------------
let g:ycm_autoclose_preview_window_after_completion=1

"custom keys
let mapleader=" "
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"
call togglebg#map("<F5>")

"-----------------
"NERDTree options
"-----------------
let NERDTreeIgnore=['\.pyc$', '\~$']

set noswapfile
set nu "line numbers on

"-----------------
"Python options
"-----------------
" Number of spaces that a pre-existing tab is equal to
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/

" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start

"Folding based on indentation:
autocmd FileType python set foldmethod=indent

"use space to open folds
nnoremap <space> za 

"-----------------
" airline options
"-----------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'solarized'
let g:airline#extensions#syntastic#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

set laststatus=2

"-----------------
" Split window remap
"-----------------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

