set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugins to install:
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/youcompleteme'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-fugitive'                 "Plugin for git
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'farseer90718/vim-taskwarrior'       "Plugin to allow for taskwarrior editing in Vim
Plugin 'vim-syntastic/syntastic'
Plugin 'fatih/vim-go'
Plugin 'uarun/vim-protobuf'

call vundle#end()            " required

filetype plugin indent on    " required
filetype plugin on

let python_highlight_all = 1

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

" AUTOCOMPLETE---
set wildmenu
set wildmode=longest,list,full
inoremap <Tab> <C-X><C-F>

" DevIcons glyph padding
let g:WebDevIconsNerdTreeAfterGlypghPadding=' '

"NAV KEY BINDS----
map <C-h> <C-w>h
map <C-j> <C-W>j
map <C-k> <C-w>k
map <C-l> <C-w>l

let g:ycm_use_clangd=0
let g:ycm_auto_trigger=0

" Syntastic Settings----------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line


"REMAP VIM SPLITs
set splitbelow
set splitright

" Airliner Changes
" let g:airline_extensions_tabline_enabled = 1
let g:airline_powerline_fonts = 1

"let g:NERDTreeIndicatorMapCustom = {
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
