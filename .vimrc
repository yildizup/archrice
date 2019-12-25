call plug#begin('~/.vim/plugged')

"for i3 syntax highlighting
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'ervandew/supertab'
Plug 'vim-latex/vim-latex'

call plug#end()

"enable autocompletion
	set wildmode=longest,list,full

set number
"key mapping switch between number and relative number
nnoremap <F3> :set relativenumber!<CR>

syntax on
set ruler
set linebreak

" für R Markdown
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>


" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" This enables automatic indentation as you type.
filetype indent on


