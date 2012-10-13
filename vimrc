set nocompatible

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'wlangstroth/vim-racket'
Bundle 'vim-scripts/paredit.vim'
Bundle 'Shougo/neocomplcache'

" Plugin indent
filetype plugin indent on
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=3 shiftwidth=3      " a tab is three spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Grep should always display a file name
set grepprg=grep\ -nH\ $*

" Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

set title
set background=dark
colorscheme torte
set guifont=Inconsolata\ Medium\ 14 

" Make trailing whitespace visible
set list listchars=eol:\ ,tab:>-,trail:.,extends:>,nbsp:_

syntax spell toplevel

" Auto number... 
set nu
"set relativenumber

set modeline

" zones for latex

syn region texZone start="\\begin{.*code}" end="\\end{.*code}\|%stopzone\>"   contains=@Spell
syn region texZone start="\\begin{minted}" end="\\end{minted}\|%stopzone\>"   contains=@Spell

" autoindent is evil
set noai

" Makes buffers not need to be saved when hidden.  Use with care.
set hidden

" set cursorline cursorcolumn

" Use standard regular expressions
nnoremap / /\v
vnoremap / /\v

" Save files when focus is lost.
au FocusLost * :wa

" rainbow parens!
" using kien's version on github
"
"let g:lisp_rainbow=1
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" turn on neocompletecache

let g:neocomplcache_enable_at_startup = 1
