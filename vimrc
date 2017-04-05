"CURSOR SHAPES
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"SOME IMPORTANT STUFFS
set number
set mouse=a
set ttymouse=xterm2
set ttyscroll=1
set hlsearch
set history=1000
set smartcase
set cursorline
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

call plug#begin()
Plug 'ap/vim-buftabline'
call plug#end()

"MAP ALTKEY FOR SPLIT NAVIGATING
"execute "set <M-h>=\eh"
"execute "set <M-l>=\el"
"execute "set <M-j>=\ej"
"execute "set <M-k>=\ek"
noremap <M-h> <c-w>h
noremap <M-l> <c-w>l
noremap <M-j> <c-w>j
noremap <M-k> <c-w>k

"TAB & INDENT
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set listchars=tab:˖\ ,eol:¬ "↲
set list
set smarttab
set autoindent
set nowrap
set cindent
set backspace=2
set ttimeout
set ttimeoutlen=50
set hidden

"CODE FODING

hi Folded	 ctermbg=232 ctermfg=14
set foldmethod=indent
set foldnestmax=10
set foldenable

syn on
colorscheme moonmod

""TREAT LONG LINE AS NORMAL LINE
"no need since `nowrap` is on
"map j gj
"map k gk
"map <F5> <NOP>

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
autocmd FileType c,cpp				let b:comment_leader = '//'
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

"let g:jedi#use_splits_not_buffers = "left"
"let g:jedi#auto_vim_configuration = 0
"let g:jedi#auto_initialization = 1
"let g:jedi#show_call_signatures = 0
""autocmd FileType python setlocal completeopt-=preview
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_loc_list_height = 8
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_signs = 0
"let g:syntastic_enable_highlighting = 0
"let g:syntastic_ocaml_use_ocamlc = 1
"let g:syntastic_c_checkers = 'gcc'

let g:SuperTabDefaultCompletionType = "<c-n>"
map <c-n> :NERDTreeToggle<CR>
map <c-b> :TlistToggle<CR>
let g:pymode_folding = 0
