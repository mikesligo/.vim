runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect() " call pathogen
call pathogen#helptags()
"
set background=dark
set hidden           " Make certain buffers hidden
set pastetoggle=<F2> " Bind pastetoggle to F2
set showmode         " Show what mode you're in
set nocompatible     
set ai               " Set autoindent
set smartindent      " Use intelligent indentation
set tabstop=4        " Tab width is 4 spaces
set shiftwidth=4     " Indent also with 4 spaces
set expandtab        " Expand tabs to spaces
set textwidth=0      " Sets width of text per line, 0 for line wrapping
set wrap             " Set wrapping
set linebreak        " For some reason, wiki says this should be set when trying to disasble linebreak
set nolist           " List disables linebreak
set wrapmargin=0     " Stop inserting line break on wrap
set formatoptions+=1 " Stop wrapping
set number           " Show line number
set showmatch        " Hilights matching searched
set ignorecase       " Searches are case insensitive...
set smartcase        " ... unless they contain at least one capital letter
set t_Co=256         " 256 colours
set tags=./tags;/    " Search the source tree for tags
set laststatus=2     " Always show the statusline
set encoding=utf-8   " Necessary to show Unicode glyphs
set nomodeline       " Disable reading the first and last few lines of each file for ex commands, for security reasons
set noswapfile       " no swap files
set backspace=indent,eol,start "for some reason backspace wasn't working on debian 7.0, this fixes

let g:tagbar_autofocus = 1 " go to tagbar window automatically
let g:flake8_max_line_length=120 " set max line length for pep8
let NERDTreeIgnore = ['\.pyc$']
let g:ctrlp_map = '<c-p>'
"let g:Powerline_symbols = 'fancy' " makes powerline look fancy but needs
"proper font/terminal support

filetype plugin on 
filetype plugin indent on 
filetype indent on   " Makes indentation different per file, good with html
filetype on
syntax on

autocmd FileType lhaskell setlocal formatoptions+=ro 

colorscheme hybrid

cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>
nnoremap <F2> :set invpaste paste?<CR>
map <F4> :A<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>
nmap <F7> :TagbarToggle<CR>
map <silent> <F10> :NERDTreeToggle<CR>
" Pytest
nmap <silent><Leader>f <Esc>:Pytest file<CR>

imap jj <Esc>

if version >= 703
  set cm=blowfish " use Blowfish for encryption, much more secure than the default
endif

" Current keybindings:
" F2 - Set paste
" F3 - 
" F4 - Swap between .h and .c(pp)
" F5 - Display all buffers, type the corresponding number to open
" F6 - 
" F7 - TagbarToggle
" F8 - 
" F9 - 
" F10 - NERDTree
"
" w!! - Write with sudo
" <ALT> f - Pytest file
