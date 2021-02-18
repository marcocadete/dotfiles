call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'  }

call plug#end()

syntax on
set encoding=UTF-8
set termguicolors
" Enable folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
" Enable folding with the spacebar
" nnoremap <space> za
set noerrorbells
" set tabs to have 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
"set nowrap
set noswapfile
set incsearch
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set number
" Show a visual line under the cursor's current line
" set cursorline
" Show the matching part of the pair for [] {} and ()
"set showmatch
" display indentation guides
set list lcs=tab:\|\ 
" Color Settings
let g:gruvbox_contrast_dark = 'hard'
set background=dark
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

"          NERDTree           "
"==============================
map <C-n> :NERDTreeToggle<CR>

" Tmux: enable true color    "
"==============================
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"          Markdown           "
"==============================
let g:mkdp_auto_start = 0
" Prevents VIM from hiding symbols in markdown
let g:indentLine_fileTypeExclude = ['markdown']
