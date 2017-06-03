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
nnoremap <leader>n :set number!<cr>
nnoremap <leader>o :only<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>s :so ~/.vimrc<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>x :x<cr>

nnoremap <leader>cc :cclose<cr>
nnoremap <leader>co :copen<cr>

nnoremap <leader>f :NERDTreeToggle<cr>

" Leader Commands: Normal Mode: Vundle

nnoremap <leader>pi :PluginInstall<cr>
nnoremap <leader>pc :PluginClean<cr>
nnoremap <leader>pu :PluginUpdate<cr>

" Leader Commands: Visual Select Mode

vnoremap <leader>s  :sort <cr>

" NERDTree

" Open nerdtree if vim is opened without a file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Language Support

" JSX

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" Vimux

 " Prompt for a command to run
 map <Leader>vp :VimuxPromptCommand<CR>

 " Run last command executed by VimuxRunCommand
 map <Leader>vl :VimuxRunLastCommand<CR>

 " Inspect runner pane
 map <Leader>vi :VimuxInspectRunner<CR>

 " Close vim tmux runner opened by VimuxRunCommand
 map <Leader>vq :VimuxCloseRunner<CR>

 " Interrupt any command running in the runner pane
 map <Leader>vx :VimuxInterruptRunner<CR>

 " Zoom the runner pane (use <bind-key> z to restore runner pane)
 map <Leader>vz :call VimuxZoomRunner()<CR>
