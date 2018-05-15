" auto reload vimrc
autocmd! bufwritepost .vimrc source $MYVIMRC
nnoremap <Leader>rc <C-w><C-v><C-l>:e $MYVIMRC<CR>

" better copy & paste
set clipboard=unnamed

let mapleader=","

"bind no highlight
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

"Quick save
noremap <C-x> :update<CR>
vnoremap <C-x> <C-C>:update<CR>
inoremap <C-x> <C-O>:update<CR>

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" toggle invisible characters
nmap <leader>l :set list!<CR>
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" common settings
au FocusLost * :wa          " auto save lost focus
set autoread
set cmdheight=1             " command bar height
set diffopt+=vertical
set hidden                  " no warning for modified buffer
set laststatus=2            " show the satus line all the time
set noshowmode              " don't show which mode disabled for PowerLine
set noundofile
set relativenumber
set scrolloff=3             " lines of text around cursor
set shell=$SHELL
set shortmess+=I
set showcmd                 " show incomplete commands
set so=7                    " set 7 lines to the cursors - when moving vertical
set title                   " set terminal title
set ttyfast                 " faster redrawing
set wildmenu                " enhanced command line completion
set wildmode=list:longest   " complete files like a shell


"navigation
map <c-j> <c-w>j
map <c-h> <c-w>h
map <c-k> <c-w>k
map <c-l> <c-w>l

"nav between tabs
map <Leader>p <esc>:tabprevious<CR>
map <Leader>n <esc>:tabnext<CR>

"map sort function to a key
noremap <Leader>s :sort<CR>

"movi of code block
vnoremap < <gv "
vnoremap > >gv "
" 5>>, 5<<
" = autoindent
" =g format all files
" =i} auto indent in {}

" make the highlighting of tabs and other non-text less annoying
highlight SpecialKey ctermbg=none ctermfg=8
highlight NonText ctermbg=none ctermfg=8

" make comments and HTML attributes italic
highlight Comment cterm=italic
highlight htmlArg cterm=italic

"show the matched { or [ and (
set showmatch

filetype plugin indent on
syntax on
color dracula

"Show line number and length
set number
set tw=120
set nowrap "do not auto wrap on load
set fo-=t  "do not auto wrap when typing
set colorcolumn=121
highlight ColorColumn ctermbg=233

" Easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Useful settings
set history=700
set undolevels=700

"Real paragraphs don't use TABs but use space
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <Leader><space> :noh<CR>

"Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile
set ruler

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'python-mode/python-mode'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'godlygeek/tabular'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'raimondi/delimitmate'
Plugin 'plasticboy/vim-markdown'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""
" NerdTree
""""""""""""""""""""
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
map <Leader>3 :NERDTreeToggle<CR>

""""""""""""""""""""
" TagBar
""""""""""""""""""""
map <Leader>t :TagbarToggle<CR>
let g:tagbar_autoclose = 0
map <Leader>c :!ctags -R -f $WORKON_HOME/tags $HOME<CR>
set tags=$WORKON_HOME/tags

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tabular
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if exists(":Tabularize")
" nmap <Leader>t| :Tabularize /|<CR>
" vmap <Leader>t| :Tabularize /|<CR>
"endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pymode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:pymode_lint_ignore = ["E501"]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDCommenter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Open NERDTree on console vim startup
" let g:nerdtree_tabs_open_on_console_startup=1

""""""""""""""""""""""""""""""
" syntastic
""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checker_args = '--ignore=E225'
""""""""""""""""""""""""""""""""""""""""
" better-whitespace
""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter * EnableStripWhitespaceOnSave
""""""""""""""""""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
let g:airline#extensions#tabline#show_splits = 0
""""""""""""""""""""""""""""""""""""""""
" ctrlp
""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

""""""""""""""""""""""""""""""""""""""""
" indent guide
""""""""""""""""""""""""""""""""""""""""
nmap <Leader>ig :IndentGuidesToggle<CR>
""""""""""""""""""""""""""""""""""""""""
" markdown
""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_toc_autofit = 1
nmap <Leader>toc :Toc<CR>
""""""""""""""""""""""""""""""""""""""""
" rainbow
""""""""""""""""""""""""""""""""""""""""
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
nmap <Leader>rb :RainbowParenthesesToggle<CR>
