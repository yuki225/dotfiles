set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugin
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'

" shortcut
nnoremap <silent><C-e> :NERDTree<CR>

" setting
let NERDTreeShowHidden = 1
autocmd VimEnter : execute 'NERDTree'

call vundle#end()            " required
filetype plugin indent on    " required
