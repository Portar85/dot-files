set nocompatible
set nowrap
set backspace=indent,eol,start

"" Indentation
set autoindent
set copyindent
set nosmartindent

"" Tabs / Spaces
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
" set smarttab

set ignorecase
set smartcase
set title
set visualbell
set noerrorbells
set ruler
set number
set cursorline

" Makes sure 4 lines visible above or below cursor
set scrolloff=4

" tmux
set mouse=a
set ttymouse=xterm
set history=1000
set undolevels=1000

" Toggle paste mode
set pastetoggle=\\o

set nobackup
set noswapfile

set listchars=nbsp:.,extends:#,tab:▸\ ,eol:

" Ignore arrows, because Henrik said it would make me a good person, I doubt it
inoremap <Up>      <NOP>
inoremap <Down>    <NOP>
inoremap <Left>    <NOP>
inoremap <Right>   <NOP>
noremap <Up>       <NOP>
noremap <Down>     <NOP>
noremap <Left>     <NOP>
noremap <Right>    <NOP>


set noscrollbind
set t_Co=256
set background=dark
