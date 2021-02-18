" sets

" turn on filetype detection
filetype plugin indent on
syntax on

" tabs, indentation, wrapping, etc
set guicursor=
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set nowrap
set backspace=start,eol,indent

" numbering
set nu
set relativenumber

" general operation
set noerrorbells
set hidden
set mouse=a

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
set encoding=utf8

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
" Toggle comments on line or section
Plug 'preservim/nerdcommenter'
" Assorted NERDTree file system explorer plugins
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'airblade/vim-gitgutter'   
" Cheat sheet: write the query, then <leader>KK
Plug 'dbeniamine/cheat.sh-vim'
" integrate vim with tmux more seamlessly
Plug 'christoomey/vim-tmux-navigator'
" get that sweet formatting assist
Plug 'prettier/vim-prettier',{ 'do': 'yarn install' }

call plug#end()

" activate the gruvbox colorscheme
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

let g:webdevicons_enable = 1
let g:airline_powerline_fonts = 1

" Remapping
" Leader key remap
let mapleader = " "

" Setup NERDCommenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Add your own custom formats or override the defaults
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" Setup UndoTree
nnoremap <leader>u :UndotreeToggle<CR>
" Setup NERDTree
nnoremap <leader>t :NERDTreeToggle<CR>
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

let NERDTreeShowHidden=1

