" Plug configuration
call plug#begin('~/.vim/plugged')
Plug 'istib/vifm.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mileszs/ack.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'dyng/ctrlsf.vim'
Plug 'stsewd/fzf-checkout.vim'
" Plug 'SirVer/ultisnips'
" Plug 'ervandew/supertab'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sheerun/vim-polyglot'
Plug 'svermeulen/vim-subversive'
Plug 'tpope/vim-repeat'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/indentpython.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
" Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
call plug#end()

" set Vim-specific RGB colors
set term=screen-256color
set t_Co=256
set t_ut=""
set background=dark
" map leader mappings
let mapleader=" "
nmap s <plug>(SubversiveSubstitute)
nmap ss <plug>(SubversiveSubstituteLine)
nmap S <plug>(SubversiveSubstituteToEndOfLine)ersiveSubstitute)
nnoremap <leader>v :EditVifm<esc>
nnoremap <leader>F :Files .<esc>
nnoremap <leader>S :CtrlSF 
nnoremap gd "lyiw:Ack <C-r>l<CR>
nnoremap <leader>f "lyiw/<C-r>l<CR>
nnoremap <leader><BS> :!<Up> 
 
" split tmux
nnoremap <leader>t :silent exec "!tmux split"<CR>
nnoremap <leader>T :silent exec "!tmux split -h"<CR>
" Select window
nnoremap <leader>1 :silent exec "!tmux select-window -t 1"<CR>:redraw!<CR>
nnoremap <leader>2 :silent exec "!tmux select-window -t 2"<CR>:redraw!<CR>
nnoremap <leader>3 :silent exec "!tmux select-window -t 3"<CR>:redraw!<CR>
nnoremap <leader>4 :silent exec "!tmux select-window -t 4"<CR>:redraw!<CR>
nnoremap <leader>5 :silent exec "!tmux select-window -t 5"<CR>:redraw!<CR>
nnoremap <leader>6 :silent exec "!tmux select-window -t 6"<CR>:redraw!<CR>
nnoremap <leader>7 :silent exec "!tmux select-window -t 7"<CR>:redraw!<CR>
nnoremap <leader>8 :silent exec "!tmux select-window -t 8"<CR>:redraw!<CR>
nnoremap <leader>9 :silent exec "!tmux select-window -t 9"<CR>:redraw!<CR>
" kill tmux session
nnoremap <leader>Q :execute "!tmux kill-session -a"<CR>


set noswapfile
set nocompatible
filetype plugin on
syntax on
set wrap 
set number
set mouse=a
set foldmethod=indent
set hlsearch
set wildmenu
set wildmode=longest,list,full
nnoremap j gj
nnoremap k gk
" Exit insert mode easier
inoremap jk <esc>
inoremap kj <esc>
inoremap JK <esc>
inoremap KJ <esc>
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set backspace=indent,eol,start
set clipboard=unnamed
" For using find in current dir
set path+=**
" search for visually selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
" show status bar
set laststatus=2
" Enable dracula theme
let g:dracula_italic = 0
"packadd! dracula
syntax enable
colorscheme dracula

" Fix ultisnips conflict with coc
let g:UltiSnipsExpandTrigger = "<nop>"

" use <tab> for trigger completion and navigate to the next complete item
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction

"inoremap <silent><expr> <Tab>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<Tab>" :
"      \ coc#refresh()

"let g:coc_snippet_next = '<tab>'

" Use <C-l> for trigger snippet expand.
"imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
"let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
"let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)


" Re-yank pasted text in visual mode
xnoremap p pgvy
