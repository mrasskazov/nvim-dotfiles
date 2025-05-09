lua require('config.lazy')
lua require("lazy").setup("plugins")

"colorscheme evening
"colorscheme murphy
"colorscheme wildcharm
syntax on
set belloff=all

set mouse

set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
"set autoindent

set nowrap
set number

set iskeyword+=-
"set cc=80

set hlsearch
set nowrapscan
set backspace=indent,eol,start

set ruler
set completeopt=menuone,noselect
"set completeopt-=preview
"set completeopt=menuone,longest,preview
"set gcr=a:blinkon0
"set ttyfast

set hidden confirm
set switchbuf=useopen

" don't jump to next on *
nnoremap * *N
" turn off highlight of search results: Ctrl-F8
"nnoremap <C-F8> :nohlsearch<CR>
"
" search selection on * in visual mode
vnoremap * y :execute ":let @/=@\""<CR> :execute "set hlsearch"<CR>

"vnoremap Y :execute ":!pbcopy"<CR> u
vnoremap Y :execute ":!clip.exe"<CR> u
set clipboard=unnamedplus

" Tab compketion and documentation
" autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
let g:SuperTabDefaultCompletionType = "context"

au BufRead,BufNewFile *.yaml set filetype=yaml
au BufRead,BufNewFile *.yml set filetype=ansible
au BufRead,BufNewFile *.ctmpl set filetype=liquid
au BufRead,BufNewFile *.ctpl set filetype=liquid
au BufRead,BufNewFile *.Dockerfile set filetype=dockerfile
au BufRead,BufNewFile Dockerfile* set filetype=dockerfile
au BufRead,BufNewFile *.Jenkinsfile set filetype=groovy
au BufRead,BufNewFile Jenkinsfile* set filetype=groovy
au BufRead,BufNewFile *.sh set filetype=sh set iskeyword+=-
