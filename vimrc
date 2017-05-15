set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

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

" Leader Commands: Visual Select Mode

vnoremap s  :sort <cr>
