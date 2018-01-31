set nocompatible              " be iMproved, required
syntax on

filetype on
filetype plugin on
filetype indent on

set nu
set rnu
set encoding=utf-8
set laststatus=2
set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab
set timeoutlen=150
colorscheme delek
%retab

" noremap <leader> :YcmCompleter GetDoc <CR>
noremap <leader>cd <C-W>k:q<CR>
nnoremap wqa :bufdo wq
noremap <leader>r :%s///g
vnoremap <leader>r :s///g
" nnoremap <leader>e :SyntasticCheck
cmap w!! w !sudo tee > dev/null %
nmap f <Plug>(easymotion-f)
nmap F <Plug>(easymotion-F)
nmap <leader>n i<CR><ESC>k$

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-syntastic/syntastic'
Plugin 'takac/vim-hardtime'
Plugin 'Yggdroot/indentLine'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on

let g:ycm_python_binary_path = 'python3'
let g:ycm_server_log_level = 'debug'

let g:syntastic_always_populate_loc_list = 0
let g:syntstic_auto_loc_list = 2
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_cursor_column = 0
let g:syntastic_enable_balloons = 0
let b:syntastic_mode = 'passive'

highlight SignColumn ctermbg=None
highlight SyntasticWarning guibg=#000000
highlight SyntasticWarningSign guibg=#000000

highlight VertSplit ctermfg=8 ctermbg=7
highlight StatusLine ctermfg=8 ctermbg=7
