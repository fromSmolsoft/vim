" source $VIMRUNTIME/defaults.vim

set clipboard^=unnamed,unnamedplus

" Vim-Plug  plugin manager.
" To disable plugin withouth uninstall add `, {'on': []}` after Plug
" 'plugin/rep' 

call plug#begin()


Plug 'dense-analysis/ale' "Linter

" Autocompletion plugin

" Plug 'Valloric/YouCompleteMe' " Multiple external dependencies needed (Visual Studio Build Tools 2019 CMake, Python, go, node and npm.

Plug 'ervandew/supertab'	" use <Tab> to insert autocompletion 


call plug#end()

syntax enable 		" Syntax highlighting
colorscheme darcula

" UI
set laststatus=2 	" Height of status bar
set statusline=%f 	" Tail of the filename
set cmdheight=2		" Show cmd line message like error message
set number		" Line numbers
" set cursorline 	" Highlight cursor line


" String operations
set omnifunc=syntaxcomplete#Complete	" Omnicompletion (intelegient autocompletion) Ctrl-X,Ctrl-O
set incsearch 		" Highlight search string matches
set ignorecase 		" Ignore case sensitivity during search
set smartcase 		" Override the ignore case setting when searching for capital letters
set hlsearch 		" highlight matches, in normal mode try typing * or even g* when cursor on string

# Spellcheking
set spell spelllang=en,cz 	" enable spell check, set language
" set spellfile=$HOME/.vim/spell/en.utf-8.add

