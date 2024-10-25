" adopted from: https://github.com/jcs/dotfiles/blob/master/.vimrc

set nocompatible
syntax on
filetype plugin indent on

" aesthetics
if exists('$BASE16_THEME')
      \ && (!exists('g:colors_name') || g:colors_name != 'base16-$BASE16_THEME')
    let base16colorspace=256
    colorscheme base16-$BASE16_THEME
endif

" leader
let mapleader = ','
inoremap jj <ESC>

" basic settings
set autoindent
set backspace=indent,eol,start
set copyindent
set cursorline
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nobackup
set noerrorbells
set noswapfile
set number
set ruler
set scrolloff=10
set shiftround
set shiftwidth=4
set showmatch
set smartcase
set smarttab
set tabstop=4
set visualbell

" remaps
nnoremap j gj
nnoremap k gk
nmap <silent> <leader><enter> :nohlsearch<CR>

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" toggle copy and paste mode with <F2>
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O><F2>
set pastetoggle=<F2>

" remember last position
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" but git re-uses the same filename all the time, so ignore viminfo
au BufNewFile,BufRead *.git/* call setpos('.', [0, 1, 1, 0])

" make :W work like :w and :Q like :q
cabbr W w
cabbr Q q

