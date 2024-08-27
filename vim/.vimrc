set nocompatible

" Use a dark background
set background=dark

" Set line numbers
set number

" Enable syntax highlighting
syntax enable

" Autoindentation
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
" set expandtab

" Show matching parantheses
set showmatch

" Enable line and column numbers in status
set ruler

" Enable syntax-based folding
set foldlevel=1

" Highlight the current line
set cursorline

" Set colorcolumn to 80 characters
set colorcolumn=80

" Enable file type detection based on file extension
filetype on
filetype indent plugin on

" One tab will look the same as 4 spaces 
set tabstop=4

" Set UTF-8 encoding
set encoding=UTF-8

" Pull in prototypes
nmap <buffer> <silent> <leader> ,PP" Pull in prototypes without namespace definition"
nmap <buffer> <silent> <leader> ,PN

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'derekwyatt/vim-protodef'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'mhinz/vim-tree'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/tagbar'

" themes
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'Badacadabra/vim-archery'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'scheakur/vim-scheakur'

call plug#end()
