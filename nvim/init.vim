"------------------------------------------------------------------------------------------------------------------------------------------------
"Basic setters
"------------------------------------------------------------------------------------------------------------------------------------------------
set number       " Set number
set termguicolors " True color
set rnu 		 " Set relative number
set wrap   		 " Line wrapper
set linebreak    " Sends entire word to next line rather than a single letter(WordWrap)
set autochdir    " To make editting file directory default
autocmd BufRead,BufNewFile * setlocal signcolumn=yes  " Enable signcolumn for all the buffers
autocmd FileType netrw setlocal signcolumn=no  " Disable signcolumn in netrw
set laststatus=2 " Enable status line
set t_Co=256      " Enable true color
set syntax=on    "Enable synatx highlighting
set nohlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
set hidden      " Keeps files open in the background.
set noerrorbells " Turns off bell sound
set noswapfile  " Disable swap files
set scrolloff=8 " Doesn't allow cursor to go all the way to the last line

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
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
call plug#end()
