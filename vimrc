" source $VIMRUNTIME/defaults.vim


" =============================================================
" Vim-Plug  plugin manager.
" -------------------------------------------------------------
" -> To disable plugin withouth uninstall add `, {'on': []}` after Plug 'plugin/rep' 

call plug#begin()

" -------------------------------------------------------------
" UI
" -------------------------------------------------------------

Plug 'doums/darcula'|" Color scheme
Plug 'itchyny/lightline.vim'|" Status bar line plugin

" -------------------------------------------------------------
" Version Control
" -------------------------------------------------------------

" Git wrapper
Plug 'tpope/vim-fugitive'

" VCS (git) visualisation in gutter bar
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'tag': 'legacy' }
endif

" Plug 'mbbill/undotree'| " Vim Undo Tree visualisation

" -------------------------------------------------------------
" Code helpers
" -------------------------------------------------------------

" <Tab> autocompletion
Plug 'ervandew/supertab'

"Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'

" Comment: line gcc, target gc, paragraf  gcap, uncomment as well. 
Plug 'tpope/vim-commentary' 

" Linter
Plug 'dense-analysis/ale' 	

" syntax-PlantUml 
Plug 'aklt/plantuml-syntax' 	

" Open URL in browser (also used to render PlantUml
" Plug 'tyru/open-browser.vim' 	

" Enables PlantUML preview in browser
" Plug 'weirongxu/plantuml-previewer.vim' 

" -------------------------------------------------------------

call plug#end()

" =============================================================


set clipboard^=unnamed,unnamedplus| " Enables OS clipboard to be used in vim (instead of Vim's clipboard)
"
" File type specific
filetype on|        " File type detection (for syntax highlight etc)
filetype plugin on| " File type loads the file ftplugin.vim in runtimepath 
filetype indent on| " File type loads the file indent.vim in runtimepath
syntax enable|      " Syntax highlighting Enabled by `plug-vim` manager by default 


" -------------------------------------------------------------
" UI
" -------------------------------------------------------------

" Theme / Scheme
colorscheme darcula

" Darcula color scheme to lightline (plugin)
let g:lightline = { 'colorscheme': 'darculaOriginal' } 	

set termguicolors|  " Truecolor (Terminal has to support it) 
set laststatus=2|   " Height of status bar
set statusline=%f|  " Tail of the filename
set cmdheight=2|    " Show cmd line message like error message
set wildmenu|       " Enable wild menu
set wildmode=longest,list,full |"  
set number|         " Line numbers
set relativenumber| " Show relative line numbers
" set cursorline|   " Highlight cursor line

set splitbelow splitright|  " New split panel opens on right or bellow
set mouse=a

set so=7| " Set given number to cursor when moving vertically

" Tabulator
set tabstop=4|      " The width of a TAB is set to 4.  Still it is a \t. It is just that Vim will interpret it to be having a width of 4.
set shiftwidth=4|   " Indents will have a width of 4
set softtabstop=4|  " Sets the number of columns for a TAB
set expandtab|      " Expand TABs to spaces

" Search
set omnifunc=syntaxcomplete#Complete|   " Omnicompletion (intelegient autocompletion) Ctrl-X,Ctrl-O
set incsearch|  " Highlight search string matches
set ignorecase| " Ignore case sensitivity during search
set smartcase|  " Override the ignore case setting when searching for capital letters
set hlsearch|   " highlight matches, in normal mode try typing * or even g* when cursor on string
set path+=**|   " Adds recursive partial file search e.g. :edit *.java will find all java files in sub-directories

" Spellcheking
set spell spelllang=en,cs|  " enable spell check, set language
" set spellfile=$HOME/.vim/spell/en.utf-8.add|  " custom world list for spellcheck

" -------------------------------------------------------------
" Key bindings
" -------------------------------------------------------------

" Move between split panels by Ctrl-[hjkl]
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
