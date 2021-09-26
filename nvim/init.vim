"------------------------------------------------------------------------------------------------------------------------------------------------
"Basic setters
"------------------------------------------------------------------------------------------------------------------------------------------------
set number       "set number
set termguicolors "true color
set rnu 		 "set relative number
set wrap   		 "line wrapper
set linebreak    "Sends entire word to next line rather than a single letter(WordWrap)
set autochdir    "To make editting file directory default
autocmd BufRead,BufNewFile * setlocal signcolumn=yes
autocmd FileType netrw setlocal signcolumn=no
set laststatus=2
set t_Co=256
syntax on

set nohlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
set hidden      " Keeps files open in the background.
set noerrorbells " turns off bell sound
set noswapfile  " Disable swap files
set scrolloff=8 " doesn't allow cursor to go all the way to the last line

autocmd FileType c,cpp setlocal equalprg=clang-format
"------------------------------------------------------------------------------------------------------------------------------------------------
"Plugs - Various plugins to make life simpler.
"------------------------------------------------------------------------------------------------------------------------------------------------
call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'udalov/kotlin-vim'
Plug 'szw/vim-maximizer'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'ap/vim-css-color'
call plug#end()
