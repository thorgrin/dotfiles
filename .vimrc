syntax on
filetype plugin on
set number
set incsearch
set wildchar=<Tab>
set wildmenu
set wildmode=longest:full,full
set autoindent
set smartindent
" set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set confirm
autocmd FileType c set omnifunc=ccomplete#Complete
nnoremap <F12> :TlistToggle<CR>
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>
