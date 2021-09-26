" let g:jellybeans_overrides = {
" \    'background': { 'guibg': 'none'},
" \}

colorscheme gruvbox "setting colorscheme

" colorscheme gruvbox
 let g:gruvbox_contrast_dark = 'hard'
 set background=dark


"Cursor Settings
" Use a line cursor within insert mode and a block cursor everywhere else.
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q" "Insert mode
let &t_EI = "\e[2 q" "Normal mode

" lightline config
 let g:lightline = {
       \ 'colorscheme': 'gruvbox',
       \ }

"STATUSLINE CONFIG
" set laststatus=2  "To Show statusline (hidden by default)
" set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P "To see the file name in the satus line (if removes, status line will show prettier)
" now set it to change the status line based on mode
" if version >= 700
"   au InsertEnter * hi StatusLine term=reverse ctermbg=8 ctermfg=0 
"   au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 
" endif
" " default the statusline to green when entering Vim
" au vimenter * hi statusline ctermbg=2 ctermfg=0 
