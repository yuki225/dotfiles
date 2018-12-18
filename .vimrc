set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'tomtom/tcomment_vim'


 """"""""""""""""""""""""""""""
 " Unit.vim setting
 """"""""""""""""""""""""""""""
 " starting with insert mode
 let g:unite_enable_start_insert=1
 " buffer list
 noremap <C-P> :Unite buffer<CR>
 " file list
 noremap <C-N> :Unite -buffer-name=file file<CR>
 " recent file list
 noremap <C-Z> :Unite file_mru<CR>
 " set sources to the current directory
 noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
 " split horizontally
 au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
 au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
 " split vertically
 au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
 au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
 " press ESC key twice to exit
 au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
 au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
 """"""""""""""""""""""""""""""
 """"""""""""""""""""""""""""""""
 "nerdtree setting
 """"""""""""""""""""""""""""""""
 " open/close nerdtree
 nnoremap <silent><C-e> :NERDTree<CR>
 " auto start
 function s:MoveToFileAtStart()
   call feedkeys("\<Space>")
   call feedkeys("\s")
   call feedkeys("\l")
 endfunction
 autocmd VimEnter * NERDTree | call s:MoveToFileAtStart() 

 " Display hidden files
 let NERDTreeShowHidden = 1
 """"""""""""""""""""""""""""""""

call vundle#end()            " required
filetype plugin indent on    " required
