set nocompatible
filetype on
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'kchmck/vim-coffee-script'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'andreypopp/vim-colors-plain'
Plugin 'vim-syntastic/syntastic'
Plugin 'mdempsky/gocode', {'rtp': 'vim/'}
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'mhinz/vim-grepper'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"

let g:better_whitespace_ctermcolor='white'

" Golang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

au FileType *.go setl syntax=go

set nowrap
set backspace=indent,eol,start

"" Indentation
set autoindent
set copyindent
set nosmartindent

set foldmethod=syntax
set foldlevelstart=20

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

" Make copys etc available to clipboard
if $TMUX == ''
  set clipboard=unnamed
endif

" set listchars=nbsp:.,extends:#,tab:▸\,eol:

" Ignore arrows 
inoremap <Up>      <NOP>
inoremap <Down>    <NOP>
inoremap <Left>    <NOP>
inoremap <Right>   <NOP>
noremap <Up>       <NOP>
noremap <Down>     <NOP>
noremap <Left>     <NOP>
noremap <Right>    <NOP>

" Pane navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

map <C-o> :NERDTreeToggle<CR>

let mapleader = "\<Space>"
let coffee_lint_options = '-f ~/coffeelint.json'

set noscrollbind
set t_Co=256
set background=dark
colorscheme noclown

autocmd FileType python setlocal shiftwidth=2 tabstop=2 softtabstop=2
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

" let g:ycm_filetype_blacklist = { 'go': 1 }

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

" Status line

set laststatus=2
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P                        " percentage of file
