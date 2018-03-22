set nocompatible              " be iMproved, required
filetype off                  " required

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tpope/vim-rails.git'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'


Plug 'https://github.com/vim-airline/vim-airline.git'
set laststatus=2 " Always Display vim-airline

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
Plug 'https://github.com/stephpy/vim-yaml.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/Raimondi/delimitMate.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/isRuslan/vim-es6.git'
Plug 'https://github.com/janko-m/vim-test.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/sheerun/vim-polyglot.git'
Plug 'alvan/vim-closetag'

" vim-jsx stuff
Plug 'https://github.com/mxw/vim-jsx.git'
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" JS Linting
Plug 'https://github.com/w0rp/ale.git'
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

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
" Comment with ctl + c and Uncomment with ctl + T
map <C-C> :s:^:#<CR>
map <C-T> :s:^#<CR>
" Allow navigating in and out of :terminal
:tnoremap <Esc> <C-\><C-n>
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
