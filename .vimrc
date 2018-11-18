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
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'SirVer/ultisnips'
Plugin 'Shougo/deoplete.nvim'
Plugin 'vim-syntastic/syntastic'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
Plugin 'w0rp/ale'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'                 "Plugin for git
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'farseer90718/vim-taskwarrior'       "Plugin to allow for taskwarrior editing in Vim

call vundle#end()            " required

filetype plugin indent on    " required
filetype plugin on

let python_highlight_all = 1

let g:systastic_java_checkers=[]

"Basic VIM Settings
syntax on
set number
set relativenumber
set encoding=utf-8
set ruler
set cursorline
set background=dark
set so=999
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Toggle --------------------------------
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :GitGutterToggle<CR>
nmap <F4> :TagbarToggle<CR>
nmap <F5> :ToggleWhitespace<CR>
nmap <F6> :StripWhitespace<CR>
nmap <F7> :IndentGuidesToggle<CR>

let NERDTreeDirArrows=1

"---AUTOCOMPLETE---
set wildmenu
set wildmode=longest,list,full

"DevIcons glyph padding
let g:WebDevIconsNerdTreeAfterGlypghPadding=' '

"NAV KEY BINDS----
map <C-h> <C-w>h
map <C-j> <C-W>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"REMAP VIM SPLITs
set splitbelow
set splitright

" Airliner Changes
let g:airline#extensions#tabline#enabled = 1

"-----NEOCOMPLETE---
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocompelte#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

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
    \ "Unknown"   : "?"
    \}

"UtilSnipD
let g:UltiSnipsExpandTriggers="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" CSV (AUTO OPENS AS TABLE)-----------------------------------------------------------------------
aug CSV_Editing
    au!
    au BufRead,BufWritePost *.csv :%ArrangeColumn
    au BufWritePre *.csv :%UnArrangeColumn
aug end
