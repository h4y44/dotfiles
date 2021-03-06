if has('python3')
  silent! python3 1
endif

"CURSOR SHAPES
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"SOME IMPORTANT STUFF
set mouse=a
set ttymouse=xterm2
set ttyscroll=1
set nocursorcolumn
set nocursorline
set incsearch
"set lazyredraw
set number
set hlsearch
set history=1000
set smartcase
set cursorline
set noeb
set cc=80
nmap <c-a> :bd<CR>
nmap <c-s> :w <CR>
imap <c-s> <Esc><Esc>:w <CR>
nmap <c-q> :q<CR>
nmap <c-f> zR
noremap <c-e> <c-u>
nmap @ ^
nmap ! 0

noremap sv :vsplit<CR>
noremap sh :split<CR>
noremap spc :set spell<CR>

"MAP ALTKEY FOR SPLIT NAVIGATING
noremap <M-h> <c-w>h
noremap <M-l> <c-w>l
noremap <M-j> <c-w>j
noremap <M-k> <c-w>k

"TAB & INDENT
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set listchars=tab:˖\ ,eol:¬ "↲
set list
set nosmarttab
set autoindent
set nowrap
set cindent
set backspace=2
set ttimeout
set ttimeoutlen=50
set hidden

"CODE FODING

hi Folded ctermbg=232 ctermfg=14
set foldmethod=indent
set foldnestmax=10
set foldenable

syn on
colorscheme moonmod

""TREAT LONG LINE AS NORMAL LINE
"no need since `nowrap` is on
"map j gj
"map k gk
map <F5> <NOP>

"STATUSLINE OPTIONS
set laststatus=2
set statusline=%1*[%-n]%5*%m
set statusline+=%4*%0.30F
set statusline+=\ %7*%r%4*%h%w\ %y
set statusline+=%=
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]\ 
set statusline+=%6*[%{&ff}]\ %2*[%2.c\ -\ %l\/%L] 

"TABLINE OPTIONS
set showtabline=2  " 0, 1 or 2; when to use a tab pages line

"SWITCH BUFFERS IN NORMAL MODE 
nmap <c-h> :bprev<CR>
nmap <c-l> :bnext<CR>

" COMMENTING BLOCKS OF CODE.
set formatoptions+=r
autocmd FileType c,cpp,go			let b:comment_leader = '//'
autocmd FileType sh,python			let b:comment_leader = '#'
autocmd FileType conf				let b:comment_leader = '#'
autocmd FileType vim				let b:comment_leader = '"'
noremap <silent> cci :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> cco :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

"MOVING IN INSERT MODE
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-l>=\el"
execute "set <M-h>=\eh"

imap <M-j> <Down>
imap <M-k> <Up>
imap <M-l> <Right>
imap <M-h> <Left>

"CLIPBOARD
set clipboard=unnamed
execute "set <M-c>=\ec"
execute "set <M-p>=\ep"
map <M-p> "+p
vmap <M-c> "+yy

"===== Plugin stuff ======

call plug#begin()
Plug 'fatih/vim-go'
Plug 'vim-scripts/AutoComplPop'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'posva/vim-vue'
call plug#end()

map <c-n> :NERDTreeToggle<CR>
map <c-b> :TlistToggle<CR>
let g:acp_enableAtStartup = 0
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

function! My_TabComplete()
 let substr = strpart(getline('.'), col('.'))
 let result = match(substr, '\w\+\(\.\w*\)$')
 if (result!=-1)
     return "\<C-X>\<C-U>"
 else
     return "\<tab>"
endfunction
inoremap <tab> <C-R>=My_TabComplete()<CR>
