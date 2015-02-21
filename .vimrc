" reload .vimrc
" :so %       or  :so $MYVIMRC
"
" show manual page Hit K in normal mode
"
" set colorcolumn=81 "show margin
set tabstop=4 "tab = 4 space
set shiftwidth=4 "indent 4 space
set nu "show line number
filetype indent on "Syntax Highlight 
set autoindent "Autoindent
"set expandtab "use spaces instead of tabs
set incsearch "search while typing
let mapleader=","

" mapping
nnoremap <CR> G

noremap <space> viw " visually select the word
" delete line Ctrl + d
nnoremap <C-d> dd 
" delete line Ctrl + d
inoremap <C-d> <esc> dd 
" press kj will go to normal mode like esc
inoremap kj <esc>
" this will upper case the word in insert mode
"inoremap <C-u> <esc>vb <left><S-u> wa
inoremap <C-u> <esc>vb <left><S-u> wa
" upper case current word in visual mode
nnoremap <C-u> vbw <S-u>
" save using Ctrl + s in insert mode
nnoremap <Leader>s :w<CR>
" edit .vimrc
"nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <silent> <Leader>ev :vsplit ~/.vim/.vimrc<CR>
nnoremap <silent> <Leader>es :so $MYVIMRC<CR>

" pathogen.vim for easy managing of plugin
" execute pathogen#infect()
call pathogen#infect()
syntax on
filetype plugin indent on
Helptags

" NERDTree
let NERDTreeIgnore=['CVS']
let NERDTreeChDirMode=2 "setting root dir in NT also sets VIM's cd
" These prevent accidentally loading files while in the NERDTree panel
autocmd FileType nerdtree noremap <buffer> <c-left> <nop>
autocmd FileType nerdtree noremap <buffer> <c-h> <nop>
autocmd FileType nerdtree noremap <buffer> <c-right> <nop>
autocmd FileType nerdtree noremap <buffer> <c-l> <nop>
autocmd vimenter * NERDTree " Open NERDTree if we're simply launching vim

" buffers
" Ctrl Left & Right move betwwen buffers
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-l> :bnext<CR>
nnoremap <Leader>l <C-w>l
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
"resize window of current buffer
nnoremap <C-RIGHT> :vertical resize +2<CR>
nnoremap <C-LEFT> :vertical resize -2<CR>
nnoremap <C-DOWN> resize -2<CR>
nnoremap <C-UP> resize +2<CR>

" snipmate to recognize php as html
au BufRead *.php set ft=php.html
au BufNewFile *.php set ft=php.html

" CtrlP mapping to use ctrl + p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" LustyExplorer
set hidden

" FuzzyFinder
nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>

" Bclose
nnoremap <Leader>q :Bclose<CR>

"echo "(>^.^<)"
