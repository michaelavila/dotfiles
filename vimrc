set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ajh17/VimCompletesMe'
Plugin 'chriskempson/base16-vim'
Plugin 'tpope/vim-dispatch'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'reedes/vim-wheel'
Plugin 'sheerun/vim-polyglot'
Plugin 'vimwiki/vimwiki'
Plugin 'w0rp/ale'

" Language specific

Plugin 'ternjs/tern_for_vim'
Plugin 'mxw/vim-jsx'

" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

" Basic Settings

set autoindent
set backspace=2
set clipboard=unnamed
set cursorline
set expandtab
set history=10000
set laststatus=2
set nohls
set noswapfile
set number
set ruler
set scrolloff=3
set softtabstop=2
set shell=zsh
set shiftwidth=2
set tabstop=2
set whichwrap+=<,>,h,l,[,]
set wrap linebreak nolist
set ttymouse=xterm2
set mouse=a

" Base 16 Colors

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Leader Commands

let mapleader=" "

" Leader Commands: Normal Mode

nnoremap 1 :!
nnoremap ; :
nnoremap ;; ;
nnoremap <leader><leader> :b#<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>e :Files<cr>
nnoremap <leader>o :only<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>s :so ~/.vimrc<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>x :x<cr>

" Leader Commands: Normal Mode: Vundle

nnoremap <leader>pi :PluginInstall<cr>

" Leader Commands: Visual Select Mode

vnoremap <leader>s  :sort <cr>

" Language Support

" JSX

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" vimwiki

let wiki_1 = {}
let wiki_1.path = '~/huluwiki'
let wiki_1.path_html = '~/huluwiki_html'
let wiki_2 = {}
let wiki_2.path = '~/mewiki'
let wiki_2.path_html = '~/mewiki_html'
let g:vimwiki_list = [wiki_1, wiki_2]
