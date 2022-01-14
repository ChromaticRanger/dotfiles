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
set nocompatible

set noerrorbells
filetype plugin indent on
syntax on
set encoding=utf-8
set nu
set relativenumber
set numberwidth=4
set textwidth=80
set wrap
set ruler
set matchpairs+=<:>,{:},(:),[:]
set ignorecase
set smartcase
set incsearch

set hidden

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set cursorline
set cursorcolumn
set mouse=a  " mouse support

set scrolloff=3
set showcmd
set showmatch

set splitbelow splitright

set termguicolors

set noshowmode

"set colorcolumn=80
"highlight ColorColumn ctermbg=Yellow guibg=Yellow

" ------------
" Vim Plugins
" ------------
call plug#begin()

"{{ Color Scheme }}
  Plug 'morhetz/gruvbox'
  Plug 'itchyny/lightline.vim'

"{{ Other Stuff }}
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lua/popup.nvim'

"{{ Telescope }}
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' } 

"{{ File Management }}
  Plug 'mhinz/vim-startify'

  " Surround.vim is all about surrounding stuff
  " https://github.com/tpope/vim-surround
  Plug 'tpope/vim-surround'

  " Enhances vim-surround
  " https://github.com/tpope/vim-ragtag
  Plug 'tpope/vim-ragtag'

  " Vim sugar for the UNIX shell commands that need it the most.
  " https://github.com/tpope/vim-eunuch
  Plug 'tpope/vim-eunuch'

  " Fugitive is the premier Vim plugin for Git.
  " https://github.com/tpope/vim-fugitive
  Plug 'tpope/vim-fugitive'

  " Comment stuff out
  " https://github.com/tpope/vim-commentary
  Plug 'tpope/vim-commentary'

call plug#end()

colorscheme gruvbox
set background=dark

" Include lua plugin configuration files
lua require('mds')

" >>>>>>>>>>>>>>>>>>>>>>>>
" >> Telescope bindings >>
" >>>>>>>>>>>>>>>>>>>>>>>>
nnoremap <Leader>pp <cmd>lua require'telescope.builtin'.builtin{}<CR>

" most recently used files
nnoremap <Leader>m <cmd>lua require'telescope.builtin'.oldfiles{}<CR>

" find buffer
nnoremap ; <cmd>lua require'telescope.builtin'.buffers{}<CR>

" find in current buffer
nnoremap <Leader>/ <cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>

" bookmarks
nnoremap <Leader>' <cmd>lua require'telescope.builtin'.marks{}<CR>

" registers
nnoremap <Leader>r <cmd>lua require'telescope.builtin'.registers{}<CR>

" git files
nnoremap <Leader>f <cmd>lua require'telescope.builtin'.git_files{}<CR>

" all files
nnoremap <Leader>bfs <cmd>lua require'telescope.builtin'.find_files{}<CR>

" ripgrep like grep through dir
nnoremap <Leader>rg <cmd>lua require'telescope.builtin'.live_grep{}<CR>

" pick color scheme
nnoremap <Leader>cs <cmd>lua require'telescope.builtin'.colorscheme{}<CR>

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

" Startify
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_custom_header = [
        \ '    ____            _           _     ____  _             _   ',
        \ '   |  _ \ _ __ ___ (_) ___  ___| |_  / ___|| |_ __ _ _ __| |_ ',
        \ '   | |_) | `__/ _ \| |/ _ \/ __| __| \___ \| __/ _` | `__| __|',
        \ '   |  __/| | | (_) | |  __/ (__| |_   ___) | || (_| | |  | |_ ',
        \ '   |_|   |_|  \___// |\___|\___|\__| |____/ \__\__,_|_|   \__|',
        \ '                 |___/                                         ',
        \]

let g:startify_bookmarks = [
            \ { 'n': '~/.config/nvim/init.vim' },
            \ { 'b': '~/.bashrc' },
            \ { 'x': '~/.xmonad/xmonad.hs' },
            \ ]

nnoremap <leader>tt :20new term://bash<CR>
nnoremap <silent> <leader>s :Startify<CR>
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

" >> Lsp key bindings
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <C-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K     <cmd>Lspsaga hover_doc<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <C-n> <cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> gf    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> gn    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> ga    <cmd>Lspsaga code_action<CR>
xnoremap <silent> ga    <cmd>Lspsaga range_code_action<CR>
nnoremap <silent> gs    <cmd>Lspsaga signature_help<CR>

"lua <<EOF
"require("lsp")
"require("treesitter")
"require("statusbar")
"require("completion")
"EOF

