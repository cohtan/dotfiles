set nocompatible
filetype off

" bundle setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" required! let vundle manage Vundle
Bundle 'qmarik/vundle'
Bundle 'ack.vim'

Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/vimfiler'
Bundle 'Shougo/unite.vim'

Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'

Bundle 'quickrun.vim'
Bundle 'sudo.vim'
Bundle 'Align'


" MapLeader 
let mapleader = ","

" 挙動に対する設定
syn on
set ambiwidth=double
" set number
set nonumber
set autoindent
set showcmd
set incsearch
set nocompatible
set hlsearch

set wildmode=list:longest

set number
set expandtab
" set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set modelines=0

" set clipboard=unnamed
set fo+=r
set shortmess+=I
" set cindent
set smartindent
set ignorecase
set smartcase
" set backspace=2
set backspace=indent,eol,start
set wrapscan
" set showmatch
set noshowmatch
set wildmenu
set formatoptions+=mM
set ruler
set nolist
set wrap
set laststatus=2
set cmdheight=2
set title
set nobackup
set noswapfile

set lazyredraw

" statusline
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" カーソル移動
nmap j gj
nmap k gk
vmap j gj
vmap k gk

" Tagsの設定
nmap gt <C-t>
nmap <C-]> <C-w>g<C-]>

" マップ設定
imap <c-l>  => <ESC>a
nmap eu :e ++enc=utf-8<CR>
nmap su :set fenc=utf-8<CR>

" 不可視文字の表示設定
set listchars=tab:>-
" set listchars=tab:>\
set list
" set showtabline=2
set nostartofline
" set startofline
"
" 全角スペースを表示させる
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/

" unite.vim
nmap <leader>f :Unite file file_mru buffer <CR>
nmap <leader>F :Unite file_rec file_mru buffer <CR>
let g:unite_enable_start_insert = 1
let g:unite_update_time = 10
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:vimball_home = "/Users/cohtan/align.vim"

" vimshell
nmap <leader>sh :VimShell<CR>

" titanium build
nmap <leader>b :!titanium.py run --platform=iphone<CR>

" map <silent> sy :call YanktmpYank()<CR> 
" map <silent> sp :call YanktmpPaste_p()<CR> 
" map <silent> sP :call YanktmpPaste_P()<CR> 





" last required
filetype plugin indent on
syn on 
