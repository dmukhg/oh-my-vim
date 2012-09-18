filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" Remove unnecessary compatibility with vi
set nocompatible

" Security vulnerabilities
set modelines=0

" Switch on syntax highlighting 
syntax on

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

if version >= 730
  set relativenumber  " 7.3: show lineno as how far from current line
  set undofile        " Creates a sessionfree undofile 
endif

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
nnoremap <leader><space> :noh<cr> "Clear out search 
nnoremap <tab> %
vnoremap <tab> %

" Fix long line handling
set wrap
set textwidth=79
set formatoptions=crqn
if version >= 730
  set colorcolumn=85
endif

" Invisible characters handling
if has("gui_running")
  " Terminal can't show the chars anyways
  set list
  set listchars=tab:▸\ ,eol:¬
endif

" Set screen-line movements as the defaults
nnoremap j gj
nnoremap k gk

" Save on losing focus
au FocusLost * :wa


" User-customizations
"   Sort css properties
nnoremap <leader>S ?{<CR>jV/^\s*\}<CR>:sort<CR>:noh<CR>

"   Re-hardwrap paragraph of text
nnoremap <leader>q gqip

"   Select the text that was just pasted
nnoremap <leader>v V`]

"   Open vimrc on the fly
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr> 


" Window-Splitting Customizations
" Make movement through windows painless
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Autoread when file is changed from outside
set autoread

" Create a nice window-title
set title
set titlestring+=%f\                 " file name
set titlestring+=%h%m%r%w            " flags
set titlestring+=\ -\ %{v:progname}  " program name

" No stupid backup or swap files
set nobackup
set noswapfile

" Colors 
colorscheme zenburn

set guioptions=aci

" Scroll 7 lines before reaching extremities
set so=7

" Tabularize shortcuts
vmap t: :Tabularize /:<cr>
vmap t= :Tabularize /=<cr>
