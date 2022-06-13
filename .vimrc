syntax on 

map I :! pdflatex %<CR><CR>
map S :! mupdf-x11 $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>
nmap <F8> :TagbarToggle<CR>

set spell
set spelllang=pt_br
set noerrorbells
set encoding=utf8
set keymap=accents
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nocompatible 
set wrap
set linebreak
set tw=60
set smartcase
set ignorecase
set incsearch
set nu
set noswapfile
set hlsearch
set showmatch 
set noshowmode
set backspace=2 
set colorcolumn=80

highlight ColorColumn ctermbg=0 guibg=lightgrey

" -------------------------------------
call plug#begin('~/.vim/plugged')

" Vim Stuff
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'honza/vim-snippets' 
Plug 'ajh17/vimcompletesme'
Plug 'ervandew/supertab'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'

" Markdown Stuff
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-markdown'

" LaTeX Stuff
Plug 'vim-latex/vim-latex'
Plug 'vim-scripts/matchit.zip'
Plug 'lervag/vimtex'
Plug 'poppyschmo/deoplete-latex'

" Programming Stuff
Plug 'rkulla/pydiction'
Plug 'vim-scripts/taglist.vim'
Plug 'yggdroot/indentline'
Plug 'SirVer/ultisnips'

" Theme Stuff
Plug 'morhetz/gruvbox'

call plug#end()
" ----------------------------------

colorscheme gruvbox
set background=dark

" Lightline Configs
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'msg' ] ]
      \ },
      \ 'component': {
      \   'msg': 'Go on!'
      \ },
      \ }

set laststatus=2

" Vim-tex Configs 
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let g:vimtex_view_method='general'

" UltiSnips Configs
let g:UltiSnipsExpandTrigger = "<tab>" 
let g:UltiSnipsJumpForwardTrigger = "<tab>" 
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetsDir="/home/matheus-r/.vim/plugged/vim-snippets/UltiSnips"
let g:UltiSnipsSnippetDirectories=["/home/matheus-r/.vim/plugged/vim-snippets/UltiSnips", "UltiSnips"]

