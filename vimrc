set nocompatible                    " Be iMproved
filetype off                        " Disable during bootstrap
set t_Co=256


"" Vundle
set rtp+=~/.vim/bundle/Vundle.vim   " Set the runtime path to include Vundle
call vundle#begin()                 " Start registering plugins

Plugin 'VundleVim/Vundle.vim'       " Let Vundle manage Vundle, required

"" Begin Vundle plugins
Plugin 'airblade/vim-gitgutter'
Plugin 'chrisbra/vim-diff-enhanced'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'haya14busa/incsearch.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'regreplop.vim'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'
Plugin 'nvie/vim-flake8'
Plugin 'dense-analysis/ale'

" Text objects / Text Formatting
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-lastpat'
Plugin 'kana/vim-textobj-line'
Plugin 'thinca/vim-textobj-between'
Plugin 'vim-scripts/indentpython.vim'

" Intellisense
Plugin 'neoclide/coc.nvim', {'branch': 'release'}


" Language definitions
Plugin 'JulesWang/css.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'b4winckler/vim-objc'
Plugin 'file:///Users/panda/Desktop/OpenSource/csv.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'exu/pgsql.vim'
Plugin 'keith/swift.vim'
Plugin 'othree/yajs.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'sheerun/rspec.vim'
Plugin 'sheerun/vim-json'
Plugin 'stephpy/vim-yaml'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'evanleck/vim-svelte', {'branch': 'main'}
Plugin 'vim-jp/vim-cpp'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tmhedberg/SimpylFold'
Plugin 'elixir-editors/vim-elixir'


" UI additions
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Color Themes Picker
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'

call vundle#end()                   " Finish registering plugins
"" End Vundle

filetype plugin indent on           " Reenable after bootstrap
runtime! init/**.vim                " Include other configs

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

let mapleader = ","

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
set tabstop=4
set shiftwidth=4

" Auto completions settings
set background=light
autocmd vimenter * colorscheme gruvbox

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Disable auto sql complete check because dbext is not installed
let g:omni_sql_no_default_maps = 1
