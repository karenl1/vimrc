set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab

set number

set ic
set hlsearch

set ttymouse=xterm2

let java_highlight_functions=1
let java_highlight_all=1
let g:ycm_show_diagnostics_ui = 0

" to find ctags file
set autochdir
set tags=tags;

autocmd BufWrite * :Autoformat

" If you are trying this at runtime, you need to reload the syntax file

" Some more highlights, in addition to those suggested by cmcginty
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc

nmap <F6> :NERDTreeToggle<CR>
nmap <F5> :TagbarToggle<CR>
nmap <esc><esc> :noh<return>

call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'craigemery/vim-autotag'
Plug 'majutsushi/tagbar'
Plug 'Chiel92/vim-autoformat'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

syntax on
colorscheme nord

" make line numbers grey rather than white
highlight Comment ctermfg=Magenta gui=NONE cterm=NONE term=NONE
