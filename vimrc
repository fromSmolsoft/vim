" source $VIMRUNTIME/defaults.vim

set clipboard^=unnamed,unnamedplus

call plug#begin()


Plug 'dense-analysis/ale' "Linter

" Autocompletion plugin
Plug 'Valloric/YouCompleteMe' ", {'on': []}

call plug#end()

syntax enable
colorscheme darcula

set laststatus=2
set statusline=%f "tail of the filename
set cmdheight=2
set number
