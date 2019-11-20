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
" Map <Leader> key
let mapleader=","


" Customize fzf colors to match colour scheme
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }
let g:fzf_layout = { 'down': '~20%' }

" To find ctags file
set autochdir
set tags=tags;

autocmd BufWrite * :Autoformat

" If you are trying this at runtime, you need to reload the syntax file
" Some more highlights, in addition to those suggested by cmcginty
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc

" Key remappings
nmap <F6> :NERDTreeToggle<CR>
nmap <F5> :TagbarToggle<CR>
nmap <esc><esc> :noh<return>
noremap <C-p> :GFiles<CR>
" Shift + Direction to change tabs
noremap <S-l> gt
noremap <S-h> gT
" Control + Direction to change panes
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
" Quit files with Leader + q
noremap <leader>q :q<cr>
" Save file with Leader + s (normal mode)
nnoremap <leader>w :w<cr>
" Save file with Leader + s (insert mode)
inoremap <leader>w <C-c>:w<cr>

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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
Plug 'junegunn/fzf.vim'

call plug#end()

syntax on
colorscheme nord

" make line numbers grey rather than white
highlight Comment ctermfg=Magenta gui=NONE cterm=NONE term=NONE
