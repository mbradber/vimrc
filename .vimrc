set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" color schemes
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required

:imap jk <Esc>

" leader is comma
let mapleader=","

" auto language detection
filetype plugin indent on

syntax on

" color scheme
colorscheme nord
"set guifont=Consolas:h10
set guifont=DejaVu_Sans_Mono:h10:cANSI

set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4
set expandtab " tabs are spaces
set smarttab autoindent
"set autoindent
"set cindent

" disable auto comment inserts on new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" make backspace work correctly
set backspace=indent,eol,start

set number " show line numbers
"set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set showmatch " highlight matching braces
set incsearch " search as characters are entered
set hlsearch "highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" NERDTree 
nnoremap <Leader>t :NERDTreeToggle<Enter>

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_max_files = 0
let g:ctrlp_match_window = 'results:50' " overcome limit imposed by max height

" I don't want a swap file
set noswapfile

" search highlighting
hi Search cterm=NONE ctermfg=yellow ctermbg=blue

" check one time after 4s of inactivity in normal mode
set autoread
au CursorHold * checktime

" change directory to the file being edited
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

set pastetoggle=<leader>p

set ttyscroll=0

" hide gvim stuff
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
