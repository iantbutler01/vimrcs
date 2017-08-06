silent! colorscheme Tomorrow-Night

" Core behavior
set hidden                          " Allow hidden, unsaved buffers
set wildmode=list:longest           " Bash-like tab completion
let g:netrw_dirhistmax=0            " Don't save netrw history
set notimeout                       " No command timeout
set mouse=a                         " Enable mouse in terminal
set showcmd                         " Show typed command prefixes while waiting for operator
set splitright                      " Add new windows towards the right
set splitbelow                      " ... and bottom

" File management
set swapfile                        " Keep swapfiles
set directory=~/.vim-tmp,~/tmp,/tmp " Keep swapfiles out of the way
set backupdir=~/.vim-tmp,~/tmp,/tmp " Keep backup files out of the way

" Text display
set cursorline                      " Highlight current line
set list                            " Show whitespace
set listchars=tab:••                " Display tab chars as...
set listchars+=trail:~              " Display trailing whitespace as...
set listchars+=extends:…            " Display off-screen-right text as...
set listchars+=precedes:…           " Display off-screen-left text as...
set nowrap                          " No wrapping
set number                          " Line numbers
set scrolloff=3                     " Scroll when the cursor is 3 lines from edge
set showmatch                       " Show matching brackets
set sidescrolloff=5                 " Scroll when the cursor is 3 columns from edge

" Typing
set expandtab                       " Use soft tabs
set shiftwidth=2                    " Width of autoindent
set tabstop=2                       " Tab settings

" Search
set hls                             " Search with highlights
set ignorecase                      " Case-insensitive search...
set smartcase                       " ...unless a capitalized character is entered
