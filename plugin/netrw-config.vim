let g:netrw_banner = 0 "Hide top banner
let g:netrw_liststyle = 3 "list style

" when browsing, <cr> will open the file by:
" =0: re-using the same window  (default)
" =1: horizontally splitting the window first
" =2: vertically   splitting the window first
" =3: open file in new tab
" =4: act like "P" (ie. open previous window)
"     Note that |g:netrw_preview| may be used
"     to get vertical splitting instead of
"     horizontal splitting.
" =[servername,tab-number,window-number]
"     Given a |List| such as this, a remote server
"     named by the "servername" will be used for
"     editing.  It will also use the specified tab
let g:netrw_browse_split = 0 "open file in what split

let g:netrw_altv = 1
" let g:netrw_winsize = 25 "vertical Netrw size
