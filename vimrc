set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ajh17/VimCompletesMe'
Plugin 'benmills/vimux'
Plugin 'chriskempson/base16-vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'reedes/vim-wheel'
Plugin 'scrooloose/nerdtree'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'vimwiki/vimwiki'
Plugin 'w0rp/ale'

" Language specific

Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'ternjs/tern_for_vim'

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

" leader Commands

let mapleader=" "

" leader Commands: Normal Mode

nnoremap 1 :!
nnoremap ; :
nnoremap ;; ;
nnoremap <leader><leader> :b#<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>e :Files<cr>
nnoremap <leader>n :set number!<cr>
nnoremap <leader>o :only<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>s :so ~/.vimrc<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>x :x<cr>

nnoremap <leader>cc :cclose<cr>
nnoremap <leader>co :copen<cr>
nnoremap <leader>cn :cnext<cr>
nnoremap <leader>cp :cprev<cr>

nnoremap <leader>f :NERDTreeToggle<cr>

" leader Commands: Normal Mode: Vundle

nnoremap <leader>pi :PluginInstall<cr>
nnoremap <leader>pc :PluginClean<cr>
nnoremap <leader>pu :PluginUpdate<cr>

" leader Commands: Visual Select Mode

vnoremap <leader>s  :sort <cr>

" NERDTree

" Open nerdtree if vim is opened without a file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap <leader>fl :NERDTreeFind<CR>
nnoremap <leader>ff :NERDTreeToggle<CR>

" Language Support

" JSX

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" Vimux

map <leader>vp :VimuxPromptCommand<cr>
map <leader>vl :VimuxRunLastCommand<cr>
map <leader>vi :VimuxInspectRunner<cr>
map <leader>vq :VimuxCloseRunner<cr>
map <leader>vx :VimuxInterruptRunner<cr>
map <leader>vz :call VimuxZoomRunner()<cr>

" Fugitive

nnoremap <leader>ga :Git amend<cr> 
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gc :Gcommit<cr> 
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gf :Gfetch<cr>
nnoremap <leader>gg :Ggrep 
nnoremap <leader>gp :Gpull<cr> 
nnoremap <leader>gps :Gpush<cr>
nnoremap <leader>gr :Gmove<cr>
nnoremap <leader>gr :Gremove<cr>
nnoremap <leader>gs :Gstatus<cr>
