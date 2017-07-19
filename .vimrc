set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'AutoComplPop'
Plugin 'sjl/badwolf'
Plugin 'https://github.com/m-kat/aws-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree'
Plugin 'hashivim/vim-hashicorp-tools'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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
"

"Fix backspace issue on vim8 
set backspace=indent,eol,start

let g:terraform_align=1

let g:neocomplete#enable_at_startup = 1

syntax enable
colorscheme badwolf

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMapOpenInTab='\r'

"Json
let g:vim_json_syntax_conceal = 0

set incsearch
set hlsearch 

set cursorline
set cursorcolumn

set clipboard=unnamed

hi CursorLine cterm=underline
hi CursorLine gui=underline
