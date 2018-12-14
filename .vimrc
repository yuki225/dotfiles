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

" *************************nerdtree setting******************************
" auto start
function s:MoveToFileAtStart()
  call feedkeys("\<Space>")
  call feedkeys("\s")
  call feedkeys("\l")
endfunction
autocmd VimEnter * NERDTree | call s:MoveToFileAtStart() 

" Display hidden files
let NERDTreeShowHidden = 1
" ***********************************************************************

call vundle#end()            " required
filetype plugin indent on    " required
