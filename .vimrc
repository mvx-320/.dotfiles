" :so to source the .vimrc

" Line numbering
set number
set relativenumber
" Tabdistance and auto-tab
set tabstop=4
set shiftwidth=4
set expandtab           " all tabs are replaced with 4 spaces
set softtabstop=4       " for a Tab, 4 spaces are inserted
set expandtab
set autoindent
" Scroll lets always 8 line shown
set scrolloff=8
" Shows Tab Line all the time
set showtabline=2

filetype plugin indent on   " makes auto indent with gg=G possible
syntax on                   " highlights
colorscheme evening

" Every new html-file starts as the skeleton with the cursor in the title
" field
autocmd BufNewFile *.html 0r ~/.vim/templates/html_skeleton.html | call cursor(6, 11)

" Sets the <LEADER>-Key to Space
let mapleader = " "
" Copiing marked text in the system-wide clipboard with <LEADER>+y
vnoremap <Leader>y "+y

" Run python scripts with F5
" <CR> represents a Enter key press
nnoremap <F5> :w<CR>:!python %<CR>
nnoremap <F6> :w<CR>:!./create.sh<CR>


