"""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim setting
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

" Set color scheme"
colorscheme mycolor

highlight colorcolumn ctermbg=7


"""""""""""""""""""""""""""""""""""""""""""""""""""
" For YouCompleteMe

let g:ycm_always_populate_location_list = 1

" Set auto complete for python3
let g:ycm_python_binary_path = 'python3'


"""""""""""""""""""""""""""""""""""""""""""""""""""
" For Python-Mode
"
" set pymode for python3
let g:pymode_python = 'python3'

" disable rope to avoid conflict with YCM"
let g:pymode_rope = 0

" Enable pymode_lint check code on the fly"
let g:pymode_lint_on_fly = 1

let g:pymode_options_colorcolumn = 1


""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim key map
"
" Map the leader to space"
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For Vim-Plug

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'python-mode/python-mode', {'for': 'python'}
Plug 'Valloric/YouCompleteMe'

call plug#end()
