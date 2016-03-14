" """"""""""""""""""""Vundle Config"""""""""""""""""

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold' " auto folder
Plugin 'vim-scripts/indentpython.vim' " auto indentation
Plugin 'scrooloose/syntastic' " syntax check
Plugin 'nvie/vim-flake8' " pep8 check
Plugin 'jnurmine/Zenburn' " color scheme
Plugin 'altercation/vim-colors-solarized' " color scheme
Plugin 'scrooloose/nerdtree'  " nerdtree
Plugin 'jistr/vim-nerdtree-tabs' " nerdtree tabs
Plugin 'kien/ctrlp.vim' " ctrl P search
Plugin 'tpope/vim-fugitive' " git
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} " powerline
Plugin 'vim-airline/vim-airline'

" Add all hyour plugins here

" All plugins must be added before these lines
call vundle#end()
filetype plugin indent on
syntax on

"""""""""""""""""""""General"""""""""""""""""
" line number
set nu
" clipboard
set clipboard=unnamed
"""""""""""""""""""""power line"""""""""""""""""
let g:airline_powerline_fonts = 1
"""""""""""""""""""""pymode custom"""""""""""""""""
" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"
" Override run current python file key shortcut to Ctrl-Shift-e
let g:pymode_run_bind = "<C-S-e>"
" Override view python doc key shortcut to Ctrl-Shift-d
let g:pymode_doc_bind = "<C-S-d>"
"""""""""""""""""""""Color Scheme"""""""""""""""""
if has('gui_running')
    set background=dark
    colorscheme solarized
else
    colorscheme zenburn
endif
" switch schme by pressing F5
call togglebg#map("<F5>")
"""""""""""""""""""""Folder"""""""""""""""""
let g:SimpylFold_docstring_preview=1
"""""""""""""""""""""Auth complete"""""""""""""""""
let g:ycm_autoclose_preview_window_after_complete=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
"""""""""""""""""""""UTF"""""""""""""""""
set encoding=utf-8

"""""""""""""""""""""Python config"""""""""""""""""
" python highlight
let python_highlight_all=1
"enable folding
set foldmethod=indent
set foldlevel=99

"enable folding with the spacebar
nnoremap <space> za
" nerdtree hide .pyc
au VimEnter * NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$'] " ignore files in NERDTree

" pep 8
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" flag unneccessafy whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*,h match BadWhitespace /\s\+$/

""""""""""""""""""Front End""""""""""""""""""
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

