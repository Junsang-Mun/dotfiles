language C                              " english
syntax on                               " turn on syntax highlighting

set encoding=utf-8                      " UTF-8 encoding
set nu ru ai si                         " nu: line number, ru: ruler, ai: auto-ident, si: smart-ident
set mouse=a                             " use mouse
set tabstop=4                           " 4 spaces for tab
set shiftwidth=4                        " 4 spaces for tab
set clipboard=unnamed                   " share clipboard with macOS
set whichwrap+=h,l,<,>                  " change line in end of line
set hlsearch                            " highlight search result
set noswapfile                          " do not use swapfile
set showmatch                           " highlight to match parentheses
set ignorecase                          " ignore case

" ========== Plug-Ins ========== "
call plug#begin()
Plug 'ervandew/supertab'                " autocomplete
Plug 'vim-airline/vim-airline'          " vim-airline
Plug 'vim-airline/vim-airline-themes'   " Theme for vim-airline
Plug 'scrooloose/nerdtree'              " NerdTree
Plug 'airblade/vim-gitgutter'           " Git changelog tracker
Plug 'sainnhe/everforest'               " everforest theme
call plug#end()

" ========== Plug-In Settings ========== "
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:SuperTabCrMapping=1

" ========== Key mappings ========== "
let mapleader = ","
nmap <leader>q :q<CR>
nmap <leader>Q :qa<CR>
nmap <leader>s :w<CR>
nmap <leader>S :wq<CR>
nmap <leader>v :vs<CR>
nmap <leader>c <C-w>w<CR>
imap <C-s> <C-o>:w<CR>
imap <C-v> <C-r>*<CR>
imap <C-z> <C-o>u
map <C-z> <C-o>u

" ========== Color scheme ========== "
set background=dark
colorscheme everforest

" ========== Display whitespaces ========== "
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
