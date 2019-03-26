set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'phpactor/phpactor'
Plugin 'w0rp/ale'
call vundle#end()

filetype plugin indent on
syntax on

let mapleader = ","

colorscheme gruvbox

set background=dark
set encoding=utf-8
set guifont=FiraCode-Regular:h14
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

map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

autocmd FileType php setlocal omnifunc=phpactor#Complete

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
