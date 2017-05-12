set nocompatible              " be iMproved, required
filetype off                  " required

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'tpope/vim-fugitive'
Plug 'git://github.com/tpope/vim-rails.git'
Plug 'git://git.wincent.com/command-t.git'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'git://github.com/nathanaelkane/vim-indent-guides.git'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'ascenator/L9', {'name': 'newL9'}
Plug 'git@github.com:vim-airline/vim-airline.git'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme = 'gruvbox'
set laststatus=2
Plug 'git@github.com:ctrlpvim/ctrlp.vim.git'
Plug 'git@github.com:rking/ag.vim.git'
Plug 'git@github.com:airblade/vim-gitgutter.git'
Plug 'ntpeters/vim-better-whitespace'
autocmd BufEnter * EnableStripWhitespaceOnSave

Plug 'https://github.com/scrooloose/nerdtree.git'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

Plug 'git@github.com:vim-ruby/vim-ruby.git'
Plug 'git@github.com:tpope/vim-haml.git'
Plug 'git@github.com:ervandew/supertab.git'
Plug 'terryma/vim-multiple-cursors'
Plug 'git://github.com/tpope/vim-endwise.git'
Plug 'git@github.com:Raimondi/delimitMate.git'

"Current syntax is gruvbox
Plug 'morhetz/gruvbox'
" All of your Plugins must be added before the following line
call plug#end()
filetype plugin indent on    " required
colorscheme gruvbox
set t_Co=256
" syntax on
:syntax on
" numbers on
:set number
:set relativenumber
" highlight search results
:set hlsearch
" ignore case when searching
:set ignorecase
" underline current line
:set cursorline
:hi cursorlinenr gui=underline cterm=underline
" Can Copy and Paste from system clipboard
set clipboard=unnamed
" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on
" default syntax is ruby
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
