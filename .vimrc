set tabstop=4
set autoindent
set shiftwidth=4
set number
set hlsearch
syntax on
set list
set listchars=tab:\>-\,space:･
set ignorecase
set laststatus=2

" visual block mode command
command! Vb normal! <C-v>

" vim-plug Install
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Vimdiff color setting
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21

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

" vim-slime setting
let g:slime_target = "tmux"

" coc.nvim setting
hi CocFloating guifg=#c29976 guibg=#001622

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
