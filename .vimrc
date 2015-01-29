set nocompatible " Make Vim more useful

set background=dark
colorscheme solarized " Use the Solarized Dark theme
let g:solarized_termtrans=1

execute pathogen#infect()

" Open NERDTree with CTRL n
map <C-n> :NERDTreeToggle<CR>

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Remap escape
imap jk <ESC>
inoremap kj <Esc>
" REMAPS
nnoremap ; : 
nnoremap <silent> <Right> :bnext<CR>
nnoremap <silent> <Left> :bprev<CR>

syntax on                   " Enable syntax highighting
set cursorline              " highlight the cursor line and don't underscore it
set linebreak               " break properly, don't split words
set hidden                  " Any buffer can be hidden (keeping its changes) without first writing the buffer to a file. This affects all commands and all buffers. 
set autowrite               " Automatically save any changes made to the buffer before it is hidden. 
set autoread                " auto load files if vim detects they have been changed outside of Vim
set encoding=utf-8          " Character encoding
set matchpairs+=<:>         " Match tag pairs 
set mouse=a                 " Enable mouse use in all modes
set autoread                " If file is not modified in VIM but changed outside, reload it
set laststatus=2            " Show status line
set showmode                " Show what mode you’re currently in
set showcmd                 " Show what commands you’re typing
set modeline                " Allow modelines
set ruler                   " Show current line and column position in file
set title                   " Show file title in terminal tab
set expandtab               " Tabs, indentation and lines || 4 spaces please
set shiftwidth=4
set tabstop=4
set softtabstop=4
set wrap                    " No line-wrapping
set textwidth=80
set clipboard=unnamed       " Copy in 
set scrolloff=3             " Start scrolling slightly before the cursor reaches an edge
set sidescrolloff=5
set sidescroll=1            " Scroll sideways a character at a time, rather than a screen at a time
set nohlsearch              " Don’t keep results highlighted after searching...
set incsearch               " ...just highlight as we type
set ignorecase              " Ignore case when searching...
set smartcase               " ...except if we input a capital letter
set iskeyword-=_            " Underscores denote words
set nobackup                " No backup files to mess around with
set noswapfile              " No backup files to mess around with
set number                  " Always show line numbers, but only in current window.
au WinEnter * setlocal number
au WinLeave * setlocal nonumber

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" Allow motions and back-spacing over line-endings etc
set backspace=indent,eol,start 
set whichwrap=h,l,b,<,>,~,[,]

"move between splits CTRL -- (J,K,L,H)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>       

" highlight the status bar when in insert mode
if version >= 700
au InsertEnter * hi StatusLine ctermfg=260 ctermbg=2
au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif

" NerdTree-esque file list 
let g:netrw_liststyle=3

" TPOPE SCRIPT RAGTAG MADNESS
let g:ragtag_global_maps = 1

" Reload when entering the buffer or gaining focus 
au FocusGained,BufEnter * :silent! !
" Save when exiting the buffer or losing focus 
au FocusLost,WinLeave * :silent! w

" Source the vimrc file after saving it
if has("autocmd")
autocmd bufwritepost .vimrc source $MYVIMRC
endif
