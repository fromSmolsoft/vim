" source $VIMRUNTIME/defaults.vim


" Vim-Plug  plugin manager.
" To disable plugin withouth uninstall add `, {'on': []}` after Plug
" 'plugin/rep' 

call plug#begin()

Plug 'doums/darcula' 		" Color scheme
Plug 'itchyny/lightline.vim' 	" Status bar line plugin
Plug 'dense-analysis/ale' 	" Linter
Plug 'tpope/vim-fugitive' 	" Git wrapper
Plug 'mbbill/undotree' 		" Undo visualisation

" Autocompletion 
" Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' } " Multiple external dependencies needed (Visual Studio Build Tools 2019 CMake, Python, go, node and npm.
Plug 'ervandew/supertab'	" use <Tab> to insert autocompletion 

Plug 'aklt/plantuml-syntax' 	" syntax : PlantUml
Plug 'tyru/open-browser.vim' 	" Open URL in browser (also used to render PlantUml
Plug 'weirongxu/plantuml-previewer.vim' " Enables PlantUML preview in browser

call plug#end()

set clipboard^=unnamed,unnamedplus " Enables OS clipboard to be used in vim (instead of Vim's clipboard)
"
" File type specific
filetype on 		" File type detection (for syntax highlight etc)
filetype plugin on 	" File type loads the file ftplugin.vim in runtimepath 
filetype indent on 	" File type loads the file indent.vim in runtimepath
syntax enable 		" Syntax highlighting (Enabled by `plug-vim` manager by default 


" UI
colorscheme darcula 	" enable color scheme
set termguicolors       " Truecolor (Terminal has to support it) 
set laststatus=2 	" Height of status bar
set statusline=%f 	" Tail of the filename
set cmdheight=2		" Show cmd line message like error message
set wildmenu 		" Enable wild menu
set number		" Line numbers
set relativenumber 	" Show relative line numbers
" set cursorline 	" Highlight cursor line
let g:lightline = { 'colorscheme': 'darculaOriginal' } 	" apply dracula color scheme to lightline (plugin)

set so=7 " Set given number to cursor when moving vertically

" String operations
set omnifunc=syntaxcomplete#Complete	" Omnicompletion (intelegient autocompletion) Ctrl-X,Ctrl-O
set incsearch 		" Highlight search string matches
set ignorecase 		" Ignore case sensitivity during search
set smartcase 		" Override the ignore case setting when searching for capital letters
set hlsearch 		" highlight matches, in normal mode try typing * or even g* when cursor on string

" Spellcheking
set spell spelllang=en,cs	" enable spell check, set language
" set spellfile=$HOME/.vim/spell/en.utf-8.add " custom world list for
" spellcheck

" Remaping keys
" Move between split panels by Ctrl-[hjkl]
nmap <silent> <c-k> :windcmd k>CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
