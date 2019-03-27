set nocompatible
filetype off

" Plugins
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
Plugin 'jiangmiao/auto-pairs'
call vundle#end()

filetype plugin indent on
syntax on

let mapleader = ","

colorscheme gruvbox

" Variables
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

" Keymaps
map <C-n> :NERDTreeToggle<CR>
map <C-p> :FZF<CR>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
        
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Weird macOS maps to move lines
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" Plugin stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

let g:ale_linters = {
\   'php': ['php'],
\}

autocmd FileType php setlocal omnifunc=phpactor#Complete
