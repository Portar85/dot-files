set nocompatible
filetype on
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'tpope/vim-fugitive'
Plugin 'kchmck/vim-coffee-script'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'

" Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"

" Golang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" au FileType *.go setl syntax=go

set nowrap
set backspace=indent,eol,start
"" Indentation
set autoindent
set copyindent
set nosmartindent

"" Tabs / Spaces
set expandtab
set tabstop=2
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
set incsearch
" tmux
set mouse=a
set ttymouse=xterm
set history=1000
set undolevels=1000

" Toggle paste mode
set pastetoggle=\\o

set nobackup
set noswapfile

" set listchars=nbsp:.,extends:#,tab:▸\,eol:

" Ignore arrows, because Henrik said it would make me a good person, I doubt it
inoremap <Up>      <NOP>
inoremap <Down>    <NOP>
inoremap <Left>    <NOP>
inoremap <Right>   <NOP>
noremap <Up>       <NOP>
noremap <Down>     <NOP>
noremap <Left>     <NOP>
noremap <Right>    <NOP>

let mapleader = "\<Space>"

set noscrollbind
set t_Co=256
set background=dark
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
colorscheme industry

autocmd FileType python setlocal shiftwidth=2 tabstop=2 softtabstop=2
au BufNewFile,BufRead *.coffee set filetype=coffee

function! DisplayColorSchemes()
   let currDir = getcwd()
   exec "cd $VIMRUNTIME/colors"
   for myCol in split(glob("*"), '\n')
      if myCol =~ '\.vim'
         let mycol = substitute(myCol, '\.vim', '', '')
         exec "colorscheme " . mycol
         exec "redraw!"
         echo "colorscheme = ". myCol
         sleep 2
      endif
   endfor
   exec "cd " . currDir
endfunction


