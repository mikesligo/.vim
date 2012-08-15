call pathogen#infect() " call pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

nnoremap <F2> :set invpaste paste?<CR>
set hidden
set pastetoggle=<F2>
set showmode
set nocompatible
set ai 
set smartindent      " use intelligent indentation
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
set textwidth=0
set wrap             " set wrapping
set linebreak
set nolist           " list disables linebreak
set wrapmargin=0     " stop inserting line break on wrap
set formatoptions+=1 " stop wrapping
syntax on
set number
set showmatch
set ignorecase       " searches are case insensitive...
set smartcase        " ... unless they contain at least one capital letter
filetype plugin on 
filetype plugin indent on 
filetype indent on   " Makes indentation different per file, good with html
filetype on
set t_Co=256 " 256 colours

" search the source tree for tags
set tags=./tags;/

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

" switch between header/source with F4
"map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <F4> :A<CR>

" opens a definition in a vspilt
map <F6> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>)

" Toggle taglist
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F7> :TlistToggle<cr>

" set tagbartoggle
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1 " go to tagbar window automatically

" go to definition
map <F9> <C-]> 

" Bind for TagBar

set background=dark

if match($TERM, "screen")!=-1
    set term=xterm
endif

cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>

set nomodeline
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

" maps NERDTree to F10
map <silent> <F10> :NERDTreeToggle<CR>
map! <silent> <F10> <ESC>:NERDTreeToggle<CR>

