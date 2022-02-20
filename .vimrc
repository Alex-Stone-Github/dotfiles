set nu
syn on

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
retab

set smartindent

nnoremap <S-f> :tabn<CR> 

nnoremap <S-j> <C-w>j 
nnoremap <S-k> <C-w>k 
nnoremap <S-h> <C-w>h 
nnoremap <S-l> <C-w>l 

colorscheme gruvbox
set nowrap
set background=dark

" Autocomplete
inoremap <TAB> <C-n>

" Plugins and stuff
call plug#begin()
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
nnoremap m :FZF<CR>
" YouCompleteMe
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
call plug#end()


" Mouse stuff
set mouse=a
