" __  ____   __ __     _____ __  __ ____   ____
"|  \/  \ \ / / \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /   \ \ / / | || |\/| | |_) | |
"| |  | | | |     \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|      \_/  |___|_|  |_|_| \_\\____|

" Author: @skogar


" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/vim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


set nocompatible
let mapleader=" "
syntax on
set number
set wildmenu
set wrap
set showcmd

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

let &t_ut=''
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set autochdir

" Search settings
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>
"
"
noremap J 5j
noremap K 5k
set scrolloff=5
"
" Normal Settings
map	s <nop>
noremap S :w<CR>
noremap Q :q<CR>
noremap R :source $MYVIMRC<CR>
"
" Split settings
map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

map sv <C-W>t<C-w>H
map sh <C-w>t<C-w>K

map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>l <C-w>l

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <RIGHT> :vertical resize+5<CR>
"
" Tabe settings
map tu :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>
"
" Plugs
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'yuttie/hydrangea-vim'

call plug#end()

let g:airline#extensions#tabline#enable = 1

color hydrangea
