set nu
syn on
set wrap
set mouse=a
set relativenumber
set encoding=UTF-8

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent

nnoremap <S-j> <C-w>j 
nnoremap <S-k> <C-w>k 
nnoremap <S-h> <C-w>h 
nnoremap <S-l> <C-w>l 
nnoremap <A-m> :NERDTreeToggle<CR>
nnoremap <S-m> :FZF<CR>

colo gruvbox

call plug#begin()
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()
