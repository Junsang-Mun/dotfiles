language C
scripte utf-8
syntax on
filetype on

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set list
set clipboard=unnamed      " share clipboard with macOS
set hlsearch               " hightlighting when searching
set smartcase              " smart case senstive
set incsearch              " show search result when typing
set noswapfile             " remove swap file
set hi=100                 " size of history buffer.
set bs=indent,eol,start    " use backspace
set ru                     " always show cursor position
set sc                     " show current typing word
set nu                     " show line number
set hls                    " highlight searching word
set ic                     " ignore case sensitive
set scs                    " enable smart case sensitive 
set ls=2                   " always show the status line
set background=dark        " set background color dark
set ai                     " auto indentation
set si                     " smart indentation
set wmnu                   " show the list of candidates when using tab autocomplete 
set lz                     " disable to update display while using macro
set lpl                    " load plugins when startup
set showmatch              " highlight matching parenthesis
set autoread               " Automatically update the new change in the buffer.
set cino=N-s               " c++ namespace indentation
set cursorline             " current line highlighting
set mouse=a                " use mouse

" ======================== Theme Settings ==============================
colorscheme onedark

" ======================== Plugin Settings =============================
" nerdtree
let NERDTreeWinPos = "left"
let NERDTreeQuitOnOpen=0
nmap nerd :NERDTreeToggle<CR>

" vim-airline
set laststatus=2 " turn on bottom bar
let g:airline#extensions#tabline#enabled=1       " turn on buffer list
let g:airline#extensions#tabline#fnamemod=':t'   " show only filename
let g:airline_theme='zenburn'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline_powerline_fonts=1

" Indent guide
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" vim-diminactive
let g:diminactive_enable_focus = 1

" vim-cpp syntax highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

" ======================== Norminette Settings =========================
" Enable norminette-vim (and gcc)
let g:syntastic_c_checkers = ['norminette', 'gcc']
let g:syntastic_aggregate_errors = 1

" Set the path to norminette (do no set if using norminette of 42 mac)
let g:syntastic_c_norminette_exec = 'norminette'

" Support headers (.h)
let g:c_syntax_for_h = 1
let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']

" Pass custom arguments to norminette (this one ignores 42header)
let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'

" Check errors when opening a file (disable to speed up startup time)
let g:syntastic_check_on_open = 1

" Enable error list
let g:syntastic_always_populate_loc_list = 1

" Automatically open error list
let g:syntastic_auto_loc_list = 1

" Skip check when closing
let g:syntastic_check_on_wq = 0

" ================= Coc settings ========================
inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

" ======================== Plugins =============================

call plug#begin()
Plug 'majutsushi/tagbar'                            " Function navigation.
Plug 'nathanaelkane/vim-indent-guides'              " Indentation
Plug 'scrooloose/nerdtree'                          " NerdTree
Plug 'vim-airline/vim-airline'                      " Airline for decoration of vim.
Plug 'vim-airline/vim-airline-themes'               " Airline theme
Plug 'airblade/vim-gitgutter'                       " Git changelog tracker.
Plug 'tpope/vim-fugitive'                           " vim with git command(e.g., Gdiff)
Plug 'blueyed/vim-diminactive'                      " Highlight the current working window.
Plug 'octol/vim-cpp-enhanced-highlight'             " C++ code highlighting.
Plug 'Yggdroot/indentLine'                          " ident line
Plug 'vim-syntastic/syntastic'                      " vim syntax
Plug 'alexandregv/norminette-vim'                   " set norminette
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " coc autocomplete
call plug#end()


" ======================== Special Settings =============================
syntax on                   " auto syntax highlight
filetype plugin indent on

set whichwrap+=h,l,<,>   " auto line switching at the end of line
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
hi SpecialKey guifg=darkgrey ctermfg=darkgrey

nnoremap <C-a> :bp<CR>
nnoremap <C-s> :bn<CR>
