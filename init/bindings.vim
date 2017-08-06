let mapleader=","

" Make Y consistent with D and C
map Y y$

" Indent/outdent
vmap <tab> >gv
vmap <s-tab> <gv

" <C-A> should go to the front of the line, as in bash
cmap <C-A> <C-B>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Copy current file path to system pasteboard
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>
map <leader>c :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>

" Use ctrl-<direction> to move between splits
nmap <C-Down>  <C-w>j
nmap <C-Up>    <C-w>k
nmap <C-Left>  <C-w>h
nmap <C-Right> <C-w>l
nmap <C-j>     <C-w>j
nmap <C-k>     <C-w>k
nmap <C-h>     <C-w>h
nmap <C-l>     <C-w>l

" Clear search highlight
nmap <silent> <expr> <Space> (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" Search for word under cursor
nmap <leader>a :Ag <cword><cr>

" Tab manipulation
nmap <silent> <C-t> :tabnew<CR>
nmap <silent> <C-c> :close<CR>
