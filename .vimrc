:imap jk <Esc>

execute pathogen#infect()

" leader is comma
let mapleader=","

" auto language detection
filetype plugin indent on

syntax on

colorscheme dracula

set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4
set expandtab " tabs are spaces
set autoindent

" disable auto comment inserts on new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" make backspace work correctly
set backspace=indent,eol,start

set number " show line numbers
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set showmatch " highlight matching braces
set incsearch " search as characters are entered
set hlsearch "highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" enable Ag (file search)
"let g:ackprg = 'ag --nogroup --nocolor --column'
" open ag.vim
nnoremap <leader>a :Ag

" CTRL-P fuzzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_max_files = 0
let g:ctrlp_match_window = 'results:50' " overcome limit imposed by max height

" igore image files, build files, etc.
" set wildignore+=*.bmp,*.jpg,*.png
" set wildignore+=*.a,*.o

" NERDTree
nnoremap <Leader>t :NERDTreeToggle<Enter>

" airline
" let g:airline#extensions#tabline#enabled = 1

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
