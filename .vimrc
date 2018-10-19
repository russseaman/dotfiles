set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugins to install:
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'  
Plugin 'scrooloose/nerdcommenter'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'SirVer/ultisnips'
Plugin 'gregsexton/gitv'
Plugin 'Shougo/deoplete.nvim'
Plugin 'vim-syntastic/syntastic'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
Plugin 'w0rp/ale'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/fzf.vim'

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on


autocmd FileType python  nnoremap <buffer> <F9>:exec '!python' shellescape(@%, 1)<CR>

let python_highlight_all = 1

"----BASICn MAPINGS
set number
set encoding=utf-8
set relativenumber
syntax on
set ruler
set cursorline
set background=dark

"----Tabbing--------
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

"---AUTOCOMPLETE---
set wildmenu
set wildmode=longest,list,full

"---KEY REMAPS------
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :GitGutterToggle<CR>
map <F4> :TagbarToggle<CR>

" Easy Tags
"let g:easytags cmd = 'usr/local/bin/'

"---NAV KEY BINDS----
map <C-h> <C-w>h
map <C-j> <C-W>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"----REMAP VIM SPLITs
set splitbelow
set splitright

"-----Python env---
let g:pymode_python = 'python3' 

" Airliner Changes
let g:airline#extensions#tabline#enabled = 1

"-----NEOCOMPLETE---
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocompelte#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

"Deocomplete---Enable at startup
let g:deocomplete#enable_at_startup = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"-----DEF DICT.
let g:necomplete#sources#dictionary#dictionaries ={
    \ 'default'  : ' ',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme'   : $HOME.'/.gosh_completions'
    \}

" Def Keyword
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*' 

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

"Nerdtree Settings
let NERDTreeShowHidden=1

"UtilSnips
let g:UltiSnipsExpandTriggers="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
