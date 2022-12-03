language C                " english
syntax on                 " turn on syntax highlighting

set encoding=utf-8        " UTF-8 encoding
set nu ru ai si           " nu: line number, ru: ruler, ai: auto-ident, si: smart-ident
set mouse=a               " use mouse
" set expandtab           " use spaces instead of tabs
set tabstop=4             " 4 spaces for tab
set shiftwidth=4          " 4 spaces for tab
set clipboard=unnamed     " share clipboard with macOS
set whichwrap+=h,l,<,>    " change line in end of line
set hlsearch              " highlight search result
set noswapfile            " do not use swapfile
set showmatch             " highlight to match parentheses
set ignorecase            " ignore case

" ========== Plug-Ins ========== "
call plug#begin()
Plug 'lifepillar/vim-mucomplete'        " autocomplete
Plug 'vim-airline/vim-airline'          " vim-airline
Plug 'vim-airline/vim-airline-themes'   " Theme for vim-airline
Plug 'scrooloose/nerdtree'              " NerdTree
Plug 'airblade/vim-gitgutter'           " Git changelog tracker
Plug 'sainnhe/everforest'               " everforest theme
call plug#end()

" ========== Plug-In Settings ========== "
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

set completeopt-=preview
set completeopt+=longest,menuone,noselect
let g:mucomplete#enable_auto_at_startup = 1

" ========== Key settings ========== "
let mapleader = ","
nmap <leader>q :q<CR>
nmap <leader>Q :qa<CR>
nmap <leader>s :w<CR>
nmap <leader>S :wq<CR>

" (NORMAL) ,q -> :q
" (NORMAL) ,Q -> :qa
" (NORMAL) ,s -> :w
" (NORMAL) ,S -> :wq

" ========== Color scheme ========== "
set background=dark
colorscheme everforest

" ========== Display whitespaces ========== "
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
