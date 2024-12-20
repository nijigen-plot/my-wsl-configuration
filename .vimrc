set expandtab
set tabstop=4
set autoindent
set shiftwidth=4
set number
set hlsearch
syntax on
set list
set listchars=tab:\>-\
set ignorecase
set laststatus=2
set ts=4

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
Plug 'CoderCookE/vim-chatgpt'
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

" vim-chatgpt setting
let g:chat_gpt_max_tokens=4097
let g:chat_gpt_model='gpt-4o'
let g:chat_gpt_session_mode=1
let g:chat_gpt_temperature = 0.7
let g:chat_gpt_lang = 'Japanese'
let g:chat_gpt_split_direction = 'horizontal'
let g:split_ratio=4
" OPENAI_API_KEY
if filereadable(expand("~/.openai_key"))
    execute 'source ~/.openai_key'
endif

