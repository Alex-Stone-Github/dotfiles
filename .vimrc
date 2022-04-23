set nu
syn on

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
retab

set smartindent

nnoremap <S-j> <C-w>j 
nnoremap <S-k> <C-w>k 
nnoremap <S-h> <C-w>h 
nnoremap <S-l> <C-w>l 

set wrap

" colorscheme
colo gruvbox
set background=dark

" Plugins and stuff
call plug#begin()
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
nnoremap m :FZF<CR>
" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Autocomplete
" inoremap <TAB> <C-n>
call plug#end()


" Mouse stuff
set mouse=a
