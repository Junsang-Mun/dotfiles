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

" ======================== Plugin Settings =============================

" nerdtree
nnoremap <C-t> :tree<CR>
let NERDTreeWinPos = "left"
autocmd VimEnter * NERDTree
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


" vim-airline
set laststatus=2 " turn on bottom bar
let g:airline#extensions#tabline#enabled=1       " turn on buffer list
let g:airline#extensions#tabline#fnamemod=':t'   " show only filename
let g:airline_theme='gruvbox'
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

" norminette-vim
let g:syntastic_c_checkers = ['norminette', 'gcc']
let g:syntastic_aggregate_errors = 1
let g:syntastic_c_norminette_exec = 'norminette'
let g:c_syntax_for_h = 1
let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']
let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0

" coc.nvim
inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

" ======================== Plugins =============================

call plug#begin()
Plug 'preservim/nerdtree'                           " nerdtree
Plug 'jacoborus/tender.vim'                         " tender colorscheme
Plug 'morhetz/gruvbox'                              " gruvbox colorscheme
Plug 'majutsushi/tagbar'                            " Function navigation.
Plug 'nathanaelkane/vim-indent-guides'              " Indentation
Plug 'vim-airline/vim-airline'                      " vim-airline
Plug 'vim-airline/vim-airline-themes'               " vim-airline-theme
Plug 'kyazdani42/nvim-tree.lua'                     " file tree plugins
Plug 'airblade/vim-gitgutter'                       " Git changelog tracker.
Plug 'tpope/vim-fugitive'                           " vim with git command(e.g., Gdiff)
Plug 'blueyed/vim-diminactive'                      " Highlight the current working window.
Plug 'octol/vim-cpp-enhanced-highlight'             " C++ code highlighting.
Plug 'Yggdroot/indentLine'                          " ident line
Plug 'vim-syntastic/syntastic'                      " vim syntax
Plug 'alexandregv/norminette-vim'                   " set norminette
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " coc autocomplete
Plug 'kyazdani42/nvim-web-devicons'                 " icons
Plug 'romgrk/barbar.nvim'                           " nvim tab plugins
call plug#end()


" ======================== Special Settings =============================

filetype plugin indent on
set whichwrap+=h,l,<,>                                            " auto line switching at the end of line
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·         " show tab and trailing spaces
hi SpecialKey guifg=darkgrey ctermfg=darkgrey
nnoremap <C-a> :bp<CR>
nnoremap <C-s> :bn<CR>
colorscheme gruvbox
