set nocompatible
filetype off

colorscheme dw_orange

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sheerun/vim-polyglot'

" end of plugins
call vundle#end()

filetype plugin indent on

" Appearance
set ruler
set number

" Plugin Settings
" Indent Guides
let g:indent_guides_enable_on_vim_startup = 2

" Vim Polyglot
syntax on
