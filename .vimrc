" Wrap text after 72 characters
"set textwidth=72"

" Set syntax highlighting
syntax on

" Automatic filetype recognition
filetype plugin on

set background=dark

" Set tabs to 4 spaces
"set indentexpr=''
set tabstop=4
set shiftwidth=4
"set expandtab

" Automatic indentation
set autoindent
set smartindent

" Line numbers
set number

" Incremental search
set incsearch

" Make sure that bottom status bar is running.
set ruler
set laststatus=2

" Set completion key for wild menu
set wildchar=<Tab>
" Turn on command line completion
set wildmenu
set wildmode=longest:full,full

" Set backspace key behaviour
set backspace=indent,eol,start

" Confirm file overwrites, 
set confirm

" Set up Omni completion
autocmd FileType c set omnifunc=ccomplete#Complete
nnoremap <F12> :TlistToggle<CR>
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" Remove whitespaces from file
:map S :%s/\s\+$//<CR>

set showcmd            " Show (partial) command in status line.
set showmatch          " Show matching brackets.
set ignorecase         " Do case insensitive matching.


" === Other useful options ===

" A few of my mappings.
"map Q {gq}

" Tell vim I use a dark background.
"set background=dark

" Misc overwrites of default color highlighting.
"hi Comment ctermfg=DarkGreen
"hi String ctermfg=DarkMagenta
"hi pythonPreCondit ctermfg=Green

"let spell_auto_type = ""
"let s:SpellAutoDisable

"highlight WhiteSpaceEOL ctermbg=darkgreen guibg=lightgreen
"match WhiteSpaceEOL /^\s*\ \s*\|\s\+$/
"autocmd WinEnter * match WhiteSpaceEOL /^\s*\ \s*\|\s\+$/

" Highlight unnecessary whitespaces
au Syntax *    syn match Error /\s\+$/ | syn match Error /^\s* \t\s*/

hi Search NONE
