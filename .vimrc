set nocompatible                " choose no compatibility with legacy vi

"" Neobundle setup
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'

"" Plugins
NeoBundle 'TeX-PDF'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-obsession'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'gregsexton/MatchTag'
NeoBundle 'YankRing.vim'
NeoBundle 'matchit.zip'
NeoBundle 'ivanov/vim-ipython'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'nvie/vim-flake8'
NeoBundle 'scrooloose/syntastic'
"NeoBundle 'klen/python-mode'
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

" Show n lines between the window border and cursor
set scrolloff=2

" Statusline
set laststatus=2
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%1((%l,%c)%)\             " line and column
set statusline+=%-4P                      " percentage of file
set statusline+=%-40f                     " path

" More sensible list chars
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
if !has('win32') && (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8')
  let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u00b7"
endif

"" Keymaps
let mapleader = ","
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <silent> ,/ :nohlsearch<CR>
map <C-L> :tabnext<cr>
map <C-H> :tabprevious<cr>
nmap <leader>cr :source ~/.vimrc<cr>
nmap <leader>ce :tabe ~/.vimrc<cr>
imap jk <Esc>

" Quickfix window
map <leader>cc :cope<cr>
map <leader>n :cn<cr>
map <leader>p :cp<cr>

" git grep this word
map <leader>* :Ggrep <C-R><C-W> *<CR>,

" Plugin specific mappings,
nmap <leader>so :OpenSession<cr>
nmap <leader>sc :CloseSession<cr>
nmap <leader>ss :SaveSession<cr>

" Don't redraw while executing macros (good performance config)
set lazyredraw

" How many tenths of a second to blink when matching brackets
set matchtime=2

" Tag searching from current directory to a parent
set tags=./tags;

" Filetypes
" See .vim/ftplugin/*.vim
autocmd FileType python map <buffer> <leader>f :call Flake8()<CR>

set foldmethod=indent
set foldlevel=9         " No indentation by default

nmap <leader>0 :set foldlevel=0<CR>
nmap <leader>1 :set foldlevel=1<CR>
nmap <leader>2 :set foldlevel=2<CR>
nmap <leader>3 :set foldlevel=3<CR>
nmap <leader>4 :set foldlevel=4<CR>
nmap <leader>5 :set foldlevel=5<CR>
nmap <leader>6 :set foldlevel=6<CR>
nmap <leader>7 :set foldlevel=7<CR>
nmap <leader>8 :set foldlevel=8<CR>
nmap <leader>9 :set foldlevel=9<CR>
