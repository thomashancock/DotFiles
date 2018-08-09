syntax enable

set number
set tabstop=2
set shiftwidth=1

" Show Invisibles
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list

" Create equals signs after line of text
nnoremap <silent> <leader>1 yypVr=
" Python comments
nnoremap <silent> <leader>2 I#<space><esc>yyPVr=0r#lr<space>jyypVr=0r#lr<space>
" C comments
noremap <silent> <leader>3 I//<space><esc>yyPVr=0r/lr/lr<space>jyypVr=0r/lr/lr<space>
" std::cout
noremap <silent> <leader>4 Istd::cout<space><<<space>"<esc>A"<space><<<space>std::endl;<esc>

" Smart case sensitivity
set ignorecase
set smartcase
" Global search and replace by default
set gdefault
" Show matches for pattern while typing
set incsearch
" Highlight matches
set hlsearch
" Turn off highlight with \<space>
nnoremap <silent> <leader><space> :noh<cr>

" Use spaces for python files
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

" Plugins
" Vim-plug
call plug#begin()
" NerdCommenter autocommenting
Plug 'scrooloose/nerdcommenter'
" Advanced Python Syntax Highlighting
Plug 'vim-python/python-syntax'
" Git changes in gutter
Plug 'airblade/vim-gitgutter'
call plug#end()

" Set update time (makes gitgutter respond faster)
set updatetime=100

" Custom Python Syntax Highlighting
let g:python_highlight_all = 1

