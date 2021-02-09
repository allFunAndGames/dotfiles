" sets

" tabs, indentation, wrapping, etc
set guicursor=
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap

" numbering
set nu
set relativenumber

" general operation
set noerrorbells
set hidden

" searching
set ignorecase
set smartcase
set incsearch

" history
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" appearance
set termguicolors
set scrolloff=8
set noshowmode
set signcolumn=yes
set cmdheight=2
set colorcolumn=80
set signcolumn=yes
set background=dark

" plugins
call plug#begin('~/.vim/plugged')

" better colorscheme
Plug 'gruvbox-community/gruvbox'
" fancy prompt & status
Plug 'vim-airline/vim-airline'
" git integration
Plug 'tpope/vim-fugitive'
" undotree
Plug 'mbbill/undotree' 
" fast find
Plug 'kien/ctrlp.vim'
" code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" activate the gruvbox colorscheme
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
