call plug#begin('~/.vim/plugged')

" Using git URL
" vim-sneak
Plug 'https://github.com/justinmk/vim-sneak.git'
" vim-gtfo
Plug 'https://github.com/justinmk/vim-gtfo.git'
" vim-airline
Plug 'https://github.com/bling/vim-airline.git'
" nerdtree
Plug 'https://github.com/scrooloose/nerdtree.git'
" vim-easy-align
Plug 'https://github.com/junegunn/vim-easy-align.git'

call plug#end()

" load colorscheme
colorscheme xoria256

" Load ftplugins and indent files
filetype plugin on
filetype indent on


" drupal files set to php filetype
augroup module
autocmd BufRead,BufNewFile *.module set filetype=php
autocmd BufRead,BufNewFile *.install set filetype=php
augroup END

" General vim configs
set visualbell           " don't beep
set mat=2 " How many tenths of a second to blink when matching brackets
set showmatch " Show matching brackets when text indicator is over them
set showmode " Show the current mode
set showcmd " Display incomplete commands
set ruler " Show the cursor position
set title " Show title
set hlsearch " Highlight search results
set incsearch  " Find as entering pattern
set magic " For regex
set ignorecase " Case insensitive patterns
set number " Show line numbers
set laststatus=2		" always show status line
" set hidden " Allows making buffers hidden even with unsaved changes
set tabpagemax=35
set pastetoggle=<F6> " Toggles indenting when pasting
set bs=indent,eol,start " Allow backspacing over everything
set backspace=indent,eol,start " Allow backspacing over everything in insert mode, configure backspace so it acts as it should act
set modelines=0 " Don't use modelines (for security)
set viminfo='20,\"50 " Use a viminfo file,...
set history=1000 " Remember more commands and search history
set undolevels=1000 " Use many levels of undo
set autoread " Auto read when a file is changed from the outside
set nobackup " Turn backup off
set noswapfile " Turn swap off
set nowrap " don't wrap lines
set nowritebackup
set mouse=a

" Code configs
syntax on
set tabstop=2		" set tab to 2 spaces
set shiftwidth=2	" set auto indent to 2 spaces
set expandtab  "  set tabs to spaces
set autoindent  " enable auto indent
set smartindent
set shiftround " Round spaces to nearest shiftwidth multiple
set nojoinspaces " Don't convert spaces to tabs
set scrolloff=3
set wrap " Wrap lines
set linebreak " Wrap lines at convenient points

"set ttyfast

"" Folding settings
set foldmethod=indent " Fold based on indent
set foldnestmax=3 " Deepest fold is 3 levels
set nofoldenable " Font fold by default

" wild menu
set wmnu
set wildmode=longest:full,full

""""""""""""""""""""""""""""""""""""""""""""
"             Plugin Tweaks                "
""""""""""""""""""""""""""""""""""""""""""""
" vim-easyalign
" start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
map <Leader>a <Plug>(EasyAlign)

" Vim-airline
let g:airline_powerline_fonts = 0
let g:airline_Theme='monochrome'
" http://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#enabled = 1

" NERDTree
let g:NERDTreeWinSize = 40
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'
let NERDTreeHighlightCursorline = 1 " Use cursorline
let NERDTreeMapActivateNode='<CR>' " Use return/enter key

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nmap <C-b> :NERDTreeToggle<cr>
