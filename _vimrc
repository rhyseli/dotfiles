set nocompatible
filetype off

filetype plugin indent on
syntax on

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ajh17/VimCompletesMe'
Plug 'StanAngeloff/php.vim'
Plug 'phpactor/phpactor'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
call plug#end()

let mapleader = ","

colorscheme gruvbox

set guifont=Noto_Mono_for_Powerline:h12
set background=dark
set encoding=utf-8
set number
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set incsearch
set hlsearch
set ignorecase
set smartcase
set noswapfile
set nobackup
set nowb
set hidden
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set gcr=a:blinkon0
set visualbell
set autoread
set noshowmode
set termguicolors
set guioptions=
set mouse=a
set shell=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe

if !empty($CONEMUBUILD)
    echom "Running in conemu"
    set termencoding=utf8
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
    inoremap <Char-0x07F> <BS>
    nnoremap <Char-0x07F> <BS>
endif

map <C-n> :NERDTreeToggle<CR>
map <C-p> :CtrlP<CR>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

let NERDTreeShowHidden=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

let g:ale_linters = {
            \   'php': ['php'],
            \}

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

autocmd FileType php setlocal omnifunc=phpactor#Complete
