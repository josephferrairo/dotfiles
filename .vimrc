set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://github.com/tpope/vim-rails.git'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'https://github.com/vim-syntastic/syntastic.git'
Plugin 'git://github.com/nathanaelkane/vim-indent-guides.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'git@github.com:vim-airline/vim-airline.git'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme = 'gruvbox'
set laststatus=2
Plugin 'git@github.com:ctrlpvim/ctrlp.vim.git'
Plugin 'git://github.com/airblade/vim-gitgutter.git'

Plugin 'ntpeters/vim-better-whitespace'
autocmd BufEnter * EnableStripWhitespaceOnSave

Plugin 'https://github.com/scrooloose/nerdtree.git'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

Plugin 'git@github.com:vim-ruby/vim-ruby.git'
Plugin 'git@github.com:ervandew/supertab.git'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'morhetz/gruvbox'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
colorscheme gruvbox
set t_Co=256
" syntax on
:syntax on
" numbers on
:set number
" highlight search results
:set hlsearch
" ignore case when searching
:set ignorecase

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
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
