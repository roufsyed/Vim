"Code compilation mappings
autocmd filetype python map <F2> :w<CR>:vsplit term://python3 %<CR><C-w>L
autocmd filetype cpp map <F2> :w<CR>:vsplit term://g++ -std=c++14 % && ./a.out<CR><C-w>L
autocmd filetype java map <F2> :w<CR>:vsplit term://javac % && java %:r <CR><C-w>L

autocmd BufReadPost *.kt setlocal filetype=kotlin "vim was not recognizing kotlin file by default so had to explicitly add define it.
autocmd filetype kotlin map <F2> :w<CR>:vsplit term://kotlinc % -include-runtime -d a.jar && java -jar a.jar<CR><C-w>L

"THE CODE BELOW IS NOT OPTIMIZED FOR NVIM, IT ONLY WORKS FOR VIM
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
map <F12> :w<CR>:bel vert term<CR><C-w>:vertical resize 60<CR>clear && g++ -std=c++14 cp.cpp && ./a.out<CR>
