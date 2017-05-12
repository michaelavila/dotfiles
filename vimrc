set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'chriskempson/base16-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

" Base 16 Colors

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Leader Commands

let mapleader=" "

" Leader Commands: Normal Mode

nnoremap <leader><leader> :b#<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>s :so ~/.vimrc<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>x :x<cr>
