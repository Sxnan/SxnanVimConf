set nocompatible
set backspace=indent,eol,start
set autoindent
set ruler
set showcmd
set incsearch
set relativenumber
set number
set scrolloff=20
set sidescroll=1
set sidescrolloff=25

let g:ycm_always_populate_location_list = 1
let mapleader = "\<Space>"

" Map Clt + n to toggle NERDTree "
nnoremap <C-n> :NERDTreeToggle<CR>

" Map F4 to force compile and diagnostics"
nnoremap <F4> :YcmForceCompileAndDiagnostics<CR>

" Map <leader>w to save file
nnoremap <leader>w :w<CR>

" Map <learder>q to quit
nnoremap <leader>q :q<CR>

" Pair completion"
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

inoremap < <><Left>
inoremap <expr> > strpart(getline('.'), col('.')-1, 1) == ">" ? "\<Right>" : ">"
inoremap << <

inoremap [ []<Left>
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap [[ [

inoremap ( ()<Left>
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap (( (

inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"

inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Valloric/YouCompleteMe'

call plug#end()
