set nocompatible
syntax on
filetype plugin indent on

" Install vim plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'dense-analysis/ale'
    Plug 'ycm-core/YouCompleteMe'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'altercation/vim-colors-solarized'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'ludovicchabant/vim-gutentags'
call plug#end()

let mapleader = ","

colo solarized
set guifont=JetBrainsMono-Regular:h14
set number relativenumber
set ruler
set visualbell
set wrap
set showmatch
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set noshowmode
set guioptions=

" Plugin maps
map <C-n> :NERDTreeToggle<CR>
map <C-p> :Files<CR>

" Default maps
nmap <Tab> :bn<CR>
nmap <leader>x :bd<CR>
nmap <leader>f :Ag<CR>

" Background switcher
map <leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" Only show relative numbers in normal mode on current buffer
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Plugin configs
let g:airline#extensions#tabline#enabled = 1
