"------------------------------------------------------------------------------------------------------------------------------------------------
"Hotkey configurations
"------------------------------------------------------------------------------------------------------------------------------------------------

"remap to jj to esc
imap jj <Esc>

"Code compilation mappings
autocmd filetype python map <F2> :w<CR>:vsplit term://python3 %<CR><C-w>L
autocmd filetype cpp map <F2> :w<CR>:vsplit term://g++ -std=c++14 % && ./a.out<CR><C-w>L
autocmd filetype java map <F2> :w<CR>:vsplit term://javac % && java %:r <CR><C-w>L
autocmd BufReadPost *.kt setlocal filetype=kotlin "vim was not recognizing kotlin file by default so had to explicitly add define it.
autocmd filetype kotlin map <F2> :w<CR>:vsplit term://kotlinc % -include-runtime -d a.jar && java -jar a.jar<CR><C-w>L

"Specific to /home/cp.cpp for competitive programming. n"
"Note: does not work without a file type. tried $
function! CP()
	:w
	:bel vert term
	:vertical resize 60
endfunction 
autocmd filetype cpp map <F12> :call CP()<CR>clear && g++ -std=c++14 cp.cpp && ./a.out <input.txt<CR>
autocmd filetype cpp map <F10> :call CP()<CR>clear && g++ -std=c++14 asd.cpp && ./a.out<CR>

"Same shit optimized above.
"map <F12> :w<CR>:bel vert term<CR><C-w>:vertical resize 60<CR>clear && g++ -std=c++14 cp.cpp && ./a.out<CR>

"Shortcuts
"Vertical terminal
nmap <F4> :split term://bash<CR><C-w>L:vertical resize 60<CR>
nmap <F3> :split term://bash<CR><C-w>J:resize 10<CR> 
"<C-w>J:resize 10<CR>
map <C-c> "+y
map <C-p> "+p

" Basic Buffer config for normal mode
nnoremap <silent>,d :bd<cr>
nnoremap <silent>,n :bn<cr>
nnoremap <silent>,p :bp<cr>
nnoremap <silent><C-i> :e /home/rouf/.config/nvim/init.vim<cr>
nnoremap ss :source init.vim<cr>
nnoremap <leader>e :Vexplore!<cr>


nnoremap <silent><leader>- :vertical resize -5<CR>
nnoremap <silent><leader>= :vertical resize +5<CR>
nnoremap <silent><leader>0 :vertical resize 100<CR>

tnoremap jj <C-\><C-n>

"To move to a different window
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
" To disable arrow keys
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>
" inoremap <ESC> <nop>
