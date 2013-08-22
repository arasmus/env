set nocompatible                " choose no compatibility with legacy vi

"" Neobundle setup
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'

"" Plugins
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'gregsexton/MatchTag'
NeoBundle 'YankRing.vim'
NeoBundle 'matchit.zip'
NeoBundleCheck

let g:ragtag_global_maps = 1

"" Generic
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation (must be after neobundle init)

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Keymaps
let mapleader = ","
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>

" Don't redraw while executing macros (good performance config)
set lazyredraw

" How many tenths of a second to blink when matching brackets
set matchtime=2
