set nocompatible              " be iMproved, required
filetype off                  " required

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tpope/vim-rails.git'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'
Plug 'https://github.com/vim-syntastic/syntastic.git'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5
Plug 'https://github.com/nathanaelkane/vim-indent-guides.git'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'ascenator/L9', {'name': 'newL9'}
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'vim-airline/vim-airline-themes'
set laststatus=2
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/rking/ag.vim.git'
Plug 'https://github.com/mhinz/vim-signify.git'
Plug 'https://github.com/ntpeters/vim-better-whitespace.git'
autocmd BufEnter * EnableStripWhitespaceOnSave

Plug 'https://github.com/scrooloose/nerdtree.git'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

Plug 'https://github.com/vim-ruby/vim-ruby.git'
Plug 'https://github.com/tpope/vim-haml.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/Raimondi/delimitMate.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/isRuslan/vim-es6.git'
Plug 'https://github.com/janko-m/vim-test.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/sheerun/vim-polyglot.git'
let g:sql_type_default = "sqlserver"
"Current syntax is gruvbox
Plug 'https://github.com/morhetz/gruvbox.git'
" All of your Plugins must be added before the following line
call plug#end()
filetype plugin indent on    " required
colorscheme gruvbox
set background=dark " Setting dark mode
set t_Co=256
" syntax on
:syntax on
:syntax enable
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
"NeoVim true color on
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set termguicolors
