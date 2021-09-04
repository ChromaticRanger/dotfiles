"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

" Leader key:
let mapleader = " "
    
" -------------
" Some basics:
" -------------
"set nocompatible

set noerrorbells
filetype plugin indent on
syntax on
set encoding=utf-8
set nu
set relativenumber
set textwidth=80
set wrap
set ruler
set matchpairs+=<:>,{:},(:),[:]
set ignorecase
set smartcase
set incsearch

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set cursorline
set cursorcolumn

set scrolloff=3
set showcmd
set showmatch

set splitbelow splitright

" set termguicolors

" set colorcolumn=80
" highlight ColorColumn ctermbg=Yellow guibg=Yellow

" ------------
" Vim Plugins
" ------------
call plug#begin()
    "Plug 'morhetz/gruvbox'
    "Plug 'jremmen/vim-ripgrep'
    "Plug 'leafgarland/typescript-vim'
    "Plug 'vim-utils/vim-man'
    "Plug 'ctrlpvim/ctrlp.vim'
    "Plug 'mbbill/undotree'
    "Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
"{{ Productivity }}
    "Plug 'vimwiki/vimwiki'
"{{ File Management }}
    "Plug 'vifm/vifm.vim'
    "Plug 'ryanoasis/vim-devicons'
call plug#end()

"colorscheme gruvbox
set background=dark

" ----------------------------------------------
" Move selected text blocks around with J and K
" ----------------------------------------------
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" ---------------------------------------
" Paste text stored in the void register
" ---------------------------------------
vnoremap <leader>p "_dP

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Vifm
"map <Leader>vv :Vifm<CR>
"map <Leader>vs :VsplitVifm<CR>
"map <Leader>vi :SplitVifm<CR>
"map <Leader>dv :DiffVifm<CR>
"map <Leader>tv :TabVifm<CR>

nnoremap <leader>tt :20new term://bash<CR>
tnoremap <F12> <C-\><C-n>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap n nzz
nnoremap N Nzz

" Clear highlighting
nnoremap <leader>cx :nohl<CR> 

:se nohlsearch

"let g:UltiSnipsExpandTrigger="<F10>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
"
