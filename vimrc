filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" Remove unnecessary compatibility with vi
set nocompatible

" Security vulnerabilities
set modelines=0

" Tab settings: tab-width is 2 and expand <tab> to spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Some other settings
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set novisualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber  " 7.3: show lineno as how far from current line
set undofile        " Creates a sessionfree undofile 

" Set <leader> to the friendlier ',' button
let mapleader = ','

" Fix search/move behavior 
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :hoh<cr> "Clear out search 
nnoremap <tab> %
vnoremap <tab> %

" Fix long line handling
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Invisible characters handling
set list
set listchars=tab:▸\ ,eol:¬

" Set screen-line movements as the defaults
nnoremap j gj
nnoremap k gk
