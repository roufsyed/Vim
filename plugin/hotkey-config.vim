"------------------------------------------------------------------------------------------------------------------------------------------------
"Hotkey configurations
"------------------------------------------------------------------------------------------------------------------------------------------------

"remap to jj to esc and to get into normal mode in terminal
imap jj <Esc>
tnoremap jj <C-\><C-n>

"remap semicolon to colon for normal mode
" nnoremap ; :

"Shortcuts for vertical and horizontal terminal
nmap <F4> :split term://bash<CR><C-w>L:vertical resize 60<CR>
nmap <F3> :split term://bash<CR><C-w>J:resize 10<CR> 

"copy and paste
map <C-c> "+y
map <C-p> "+p

" Basic Buffer switch and delete config for normal mode
nnoremap <silent><leader>n :bn<cr>
nnoremap <silent><leader>p :bp<cr>
nnoremap <silent><leader>d :bd<cr>
" nnoremap <silent><leader>dd :bd!<cr>

"save and quit
nnoremap <leader>w :update<CR>
nnoremap <leader>q :q<CR>

"Search and replace
nnoremap <leader>sr :%s/<C-r>+//c

"to open init and source
nnoremap <silent><C-i> :e /home/rouf/.config/nvim/init.vim<cr>
nnoremap ss :source %<cr>

"opens netrw in right vsplit
nnoremap <leader>e :Vexplore!<cr>

"Resize window
nnoremap <silent><leader>- :vertical resize -5<CR>
nnoremap <silent><leader>= :vertical resize +5<CR>
nnoremap <silent><leader>0 :vertical resize 100<CR>

"cnext, cprevios and copen
nmap <C-[> :cnext<cr>
nmap <C-]> :cprev<cr>
nmap <C-q> :copen<cr>

"Move texts around
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
inoremap <C-j> <esc>:m .+1<CR>i
inoremap <C-k> <esc>:m .-2<CR>i

"To move to a different window
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"To move windows around
nnoremap <A-k> <C-w>K
nnoremap <A-j> <C-w>J
nnoremap <A-h> <C-w>H
nnoremap <A-l> <C-w>L

