" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      endif

      " Run PlugInstall if there are missing plugins
      autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
        \| PlugInstall --sync | source $MYVIMRC
        \| endif

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
" Plug 'xolox/vim-misc'
" golang support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" access clipboard
" set Vim-specific RGB colors
" set term=screen-256color
" set t_Co=256
" set t_ut=""
set background=dark
" map leader mappings
let mapleader=" "
" access clipboard
set clipboard=unnamed
" open vifm for browse files
nnoremap <leader>v :EditVifm<esc>

" search for files
nnoremap <leader>F :Files .<esc>
nnoremap <leader>S :CtrlSF 

" go to last command
nnoremap <leader><BS> :!<Up> 

" reload vimrc
noremap <leader>R :so ~/.vimrc<esc> 
 


set noswapfile
set nocompatible
filetype plugin on
syntax on
set wrap 
set number
" set mouse=a
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

" Re-yank pasted text in visual mode
xnoremap p pgvy
