runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect() " call pathogen
call pathogen#helptags()
set rtp+=~/.vim/bundle/powerline-all/powerline/bindings/vim

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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set completeopt-=preview " disable preview window in youcompelteme

let g:tagbar_autofocus = 1 " go to tagbar window automatically
let g:flake8_max_line_length=120 " set max line length for pep8
let NERDTreeIgnore = ['\.pyc$'] " Ignore files in nerdtreebrowser
let g:ctrlp_map = '<c-p>' " ctrl p keybinding
let g:ctrlp_custom_ignore = 'node_modules\|git' " ctrl p ignore dirs
let g:ycm_add_preview_to_completeopt = 0 " don't show 'extra info' window for ycm
let g:ctrlp_working_path_mode = 'ra' " ctrl p the root is where the .git is located
let g:Powerline_symbols = 'fancy' " extra symbols for powerline, might require some font patching
let g:ycm_semantic_triggers = {'haskell' : ['.']}

filetype plugin on 
filetype plugin indent on 
filetype indent on   " Makes indentation different per file, good with html
filetype on
syntax on

autocmd FileType lhaskell setlocal formatoptions+=ro tabstop=2 sw=2

colorscheme hybrid

cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>
nnoremap <F2> :set invpaste paste?<CR>
nnoremap <F3> :UndotreeToggle<cr> 
map <F4> :A<CR>
map <F6> :bNext<CR>
map <F7> :bprevious<CR>
nnoremap <F8> :buffers<CR>:buffer<Space>
nmap <F9> :TagbarToggle<CR>
map <silent> <F10> :NERDTreeToggle<CR>
" Pytest
nmap <silent><Leader>f <Esc>:Pytest file<CR>

"folding
inoremap <F11> <C-O>za
nnoremap <F11> za
onoremap <F11> <C-C>za
vnoremap <F11> zf

imap jj <Esc>

if version >= 703
  set cm=blowfish " use Blowfish for encryption, much more secure than the default
endif

" use ag instead of grep, makes ctrlp faster in theory, haven't verified
if executable("ag")
    set grepprg=ag\ --nogroup\
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Make powerline not wait a second before updating, really nice
if ! has('gui_running') 
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

" Current keybindings:
" F2 - Set paste
" F3 - Undo tree toggle
" F4 - Swap between .h and .c(pp)
" F5 - Use with vimlatex
" F6 - Prev buffer
" F7 - Next buffer
" F8 - Select a buffer
" F9 - TagbarToggle
" F10 - NERDTree
" F11 - Fold
"
" w!! - Write with sudo
" \f - Pytest file
" ctrl p - ctrlp
" jj - same as esc
