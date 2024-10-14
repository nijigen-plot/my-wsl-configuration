set tabstop=4
set autoindent
set shiftwidth=4
set number
set hlsearch
syntax on
set list
set listchars=tab:\>-\,space:･
set ignorecase

" visual block mode command
command! Vb normal! <C-v>

" vim-plug Install
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" lexima.vim install
call plug#begin('~/.vim/plugged')
Plug 'cohama/lexima.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'jpalardy/vim-slime'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" coc.nvim setting(バージョンが足りない場合以下)
" sudo add-apt-repository ppa:jonathonf/vim
" sudo apt update
" sudo apt install vim
" :CoCInstall coc-pyright
