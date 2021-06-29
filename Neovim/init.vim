set encoding=utf8
set fileencodings=utf8

set ai
set number
set ruler
set wrap
set wildmenu
set nocompatible
set ignorecase
set smartcase
set hlsearch
set cindent
set confirm
set t_Co=256 
set mouse=a
set laststatus=1
set backspace=2

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

filetype indent on

syntax enable

highlight Search cterm=reverse ctermbg=none ctermfg=none

inoremap ( ()<Esc>i
inoremap { {}<ESC>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-d> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode=3

" Automatically Close NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


call plug#begin()
    Plug 'rakr/vim-one'
    Plug 'honza/vim-snippets'
    Plug 'preservim/nerdtree'
call plug#end()

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set background=dark " for the dark version
" set background=light " for the light version
colorscheme one
