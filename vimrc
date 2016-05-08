
"OTHER
colorscheme moonshine
set nu
set mouse=a
set ttymouse=xterm2
set hlsearch
syn on 
set history=1000
set smartcase
"set nocompatible
imap jj <Esc>
filetype plugin on
set t_Co=256
set re=1
nmap <Tab> >>
nmap <c-o> :e 
nmap <c-w> :bd<CR>

"TAB & INDENT
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set cindent
set backspace=2
set ttimeout
set ttimeoutlen=50
set hidden

"PLUGINS
call plug#begin()
Plug 'Shougo/neocomplete.vim'
call plug#end()

"TREAT LONG LINE AS NORMAL LINE
map j gj
map k gk
map <F5> <NOP>

"STATUSLINE OPTIONS
function! Has_Paste()
    if &paste 
        return '[PASTE]'
    else
        return ''
	endif
endfunction

set laststatus=2
set statusline=%1*[%-n]%5*%m
set statusline+=%3*%{Has_Paste()} 
set statusline+=%4*%0.30F
set statusline+=\ %7*%r%4*%h%w\ %y
set statusline+=%=
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]\ 
set statusline+=%6*[❤\ %{&ff}]\ %2*[%2.c\ ☯\ %l\/%L] 

hi User1 ctermbg=64 ctermfg=234 guibg=64 guifg=234 
hi User2 ctermbg=yellow  ctermfg=234 guibg=yellow guifg=234 
hi User3 ctermbg=blue  ctermfg=234 guibg=blue guifg=234
hi User4 ctermbg=234 ctermfg=red guibg=234 guifg=red
hi User5 ctermbg=magenta ctermfg=234 guibg=magenta guifg=234 
hi User6 ctermbg=234 ctermfg=64 guibg=234 guifg=64 
hi User7 ctermbg=red ctermfg=234 guibg=red guifg=234

"TABLINE OPTIONS
set showtabline=2  " 0, 1 or 2; when to use a tab pages line

hi TabLine      ctermfg=106         ctermbg=239         cterm=None
hi TabLineFill  ctermfg=235         ctermbg=240
hi TabLineSel   ctermfg=233         ctermbg=172         cterm=Bold
hi VertSplit    ctermfg=238         ctermbg=238         cterm=None

"IGNORE SOME FILE TYPE
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*.pyc

"SPEED UP HIGHLIGHTING
augroup vimrc
	autocmd!
	autocmd BufWinEnter,Syntax * syn sync minlines=500 maxlines=500
augroup END

"LONGLINE MARKER AND CURSOR LINE
hi ColorColumn ctermbg=234
set cc=95
hi CursorLine ctermbg=234 cterm=NONE
set cursorline

"MOVING IN INSERT MODE
inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-l> <Right>
inoremap <c-h> <Left>

"CLIPBOARD
set clipboard=unnamedplus
map <c-p> "+p
map <c-c> "+yy

"MOVING IN INSERT
map <c-q> :q<CR>
map <F4> :echo strftime('%c')<CR>
map <c-s> :update<CR> 
map <c-d> ciw
map <F3> :bnext<CR>
map <F2> :bprev<CR>
"toggle low contrast colorscheme 
function! Is_Solarized() 
    if g:colors_name == "solarized"
        :color moonshine
    else 
        :color solarized
    endif
endfunction

map <space> :call Is_Solarized()<CR>
set pastetoggle=<F7>
inoremap <c-f> :FZF<CR>
"Fix PKGBUILD
autocmd VimEnter * if @% == 'PKGBUILD' | exe 'setf PKGBUILD' | endif
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
