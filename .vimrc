set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'

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

syntax on
set number
set relativenumber
set hlsearch
set ts=4
set sw=4
set clipboard=unnamed
colorscheme lettuce

" for lightline
set laststatus=2

" alias
command W w
command Wq wq
command Q q

map<C-a> :1,$y<CR>
map<C-c> :!clear && compile %
map<C-f> :!open .<CR>
" auto indent
map<C-i> :bufdo normal gg=G:wall<CR>
map<C-j> :resize +5<CR>
map<C-k> :resize -5<CR>
map<C-o> :split input.txt<CR>
map<C-p> :NERDTreeToggle<CR>

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" macro
let @q="i#include <iostream>\<CR>using namespace std;\<CR>\<CR>int main(void)\<CR>{\<CR>ios::sync_with_stdio(false);\<CR>cin.tie(NULL);\<CR>\<CR>return 0;\<CR>}\<CR>\<Esc>kkki"
