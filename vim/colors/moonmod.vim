""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""" moonmod """"""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" VIM COLOR SCHEME
"
" Maintainer:	h4y44

" Inspirations: Moonshine-vim


"hi clear

set background=dark
let g:colors_name = 'moonmod'

hi ColorColumn		ctermbg=234
hi CursorLine		ctermbg=232							  cterm=NONE

hi User1			ctermbg=64			 ctermfg=235   
hi User2			ctermbg=3			 ctermfg=235   
hi User3			ctermbg=4			 ctermfg=234  
hi User4			ctermbg=234			 ctermfg=68		  cterm=BOLD
hi User5			ctermbg=5			 ctermfg=234   
hi User6			ctermbg=234			 ctermfg=64		  cterm=BOLD
hi User7			ctermbg=red			 ctermfg=234  

hi TabLine			ctermfg=106			 ctermbg=237	  cterm=NONE
hi TabLineFill		ctermfg=233			 ctermbg=234	  cterm=NONE
hi TabLineSel		ctermfg=236			 ctermbg=179	  cterm=BOLD

hi Normal			ctermbg=233			 ctermfg=179	  cterm=NONE

hi Special			ctermbg=NONE		 ctermfg=65		  cterm=BOLD
hi Comment			ctermbg=NONE		 ctermfg=240	  cterm=NONE
hi Statement		ctermbg=NONE		 ctermfg=172	  cterm=NONE
hi Identifier		ctermbg=NONE		 ctermfg=66		  cterm=BOLD
hi Type				ctermbg=NONE		 ctermfg=94		  cterm=NONE
hi Function			ctermbg=NONE		 ctermfg=58		  cterm=bold
hi PreProc			ctermbg=NONE		 ctermfg=96       cterm=BOLD

hi Constant			ctermbg=NONE		 ctermfg=166	  cterm=NONE
hi Boolean			ctermbg=NONE		 ctermfg=67		  cterm=BOLD
hi String			ctermbg=NONE		 ctermfg=100	  cterm=NONE
hi Title			ctermbg=NONE		 ctermfg=109	  cterm=NONE

hi LineNr			ctermbg=232			 ctermfg=238	  cterm=NONE
hi CursorLineNr		ctermbg=232 		 ctermfg=69 	  cterm=NONE
hi MatchParen		ctermbg=237			 ctermfg=75		  cterm=NONE
hi Conceal			ctermbg=NONE		 ctermfg=245	  cterm=NONE
hi SpecialKey		ctermbg=NONE		 ctermfg=240	  cterm=NONE
hi SignColumn		ctermbg=233			 ctermfg=242	  cterm=NONE

hi Directory		ctermbg=NONE		 ctermfg=143	  cterm=NONE
hi Underlined		ctermbg=NONE		 ctermfg=NONE	  cterm=UNDERLINE

hi Visual			ctermbg=232			 ctermfg=NONE	  cterm=REVERSE
hi VisualNOS		ctermbg=NONE		 ctermfg=NONE	  cterm=UNDERLINE
hi IncSearch		ctermbg=100			 ctermfg=235	  cterm=NONE
hi Search			ctermbg=100			 ctermfg=232	  cterm=BOLD

hi VertSplit		ctermbg=233			 ctermfg=238	  cterm=BOLD
hi ModeMsg			ctermbg=NONE		 ctermfg=111	  cterm=NONE
hi WildMenu			ctermbg=236			 ctermfg=111	  cterm=UNDERLINE

hi DiffAdd			ctermbg=64			 ctermfg=235	  cterm=NONE
hi DiffDelete		ctermbg=160			 ctermfg=235	  cterm=NONE
hi DiffChange		ctermbg=60			 ctermfg=235	  cterm=NONE
hi DiffText			ctermbg=214			 ctermfg=235	  cterm=NONE

hi Pmenu			ctermbg=235			 ctermfg=7		  cterm=NONE
hi PmenuSel			ctermbg=4			 ctermfg=234	  cterm=NONE
hi PmenuSbar		ctermbg=234			 ctermfg=NONE	  cterm=NONE
hi PmenuThumb		ctermbg=8			 ctermfg=NONE	  cterm=NONE

hi SpellBad			ctermbg=239			 ctermfg=242	  cterm=NONE
hi SpellCap			ctermbg=NONE		 ctermfg=NONE	  cterm=UNDERCURL
hi SpellLocal		ctermbg=NONE		 ctermfg=NONE	  cterm=UNDERCURL
hi SpellRare		ctermbg=NONE		 ctermfg=NONE	  cterm=UNDERCURL

hi ErrorMsg			ctermbg=166			 ctermfg=235 	  cterm=NONE
hi WarningMsg		ctermbg=NONE		 ctermfg=124 	  cterm=NONE
hi MoreMsg			ctermbg=NONE		 ctermfg=111 	  cterm=NONE
hi Question			ctermbg=NONE		 ctermfg=111 	  cterm=NONE

hi Error			ctermbg=NONE		 ctermfg=124 	  cterm=BOLD
hi Ignore			ctermbg=NONE		 ctermfg=NONE	  cterm=NONE
hi Todo				ctermbg=233			 ctermfg=185 	  cterm=REVERSE

hi NonText			ctermbg=NONE		 ctermfg=240 	  cterm=NONE

hi Cursor			ctermbg=230			 ctermfg=NONE	  cterm=NONE
hi CursorColumn		ctermbg=236			 ctermfg=NONE	  cterm=NONE

hi helpleadblank	ctermbg=NONE		 ctermfg=NONE	  cterm=NONE
hi helpnormal		ctermbg=NONE		 ctermfg=NONE	  cterm=NONE

hi link Number							 Constant
hi link Character		   				 Constant

hi link Conditional						 Statement
hi link Debug			   				 Special
hi link Define			   				 PreProc
hi link Delimiter		   				 Special
hi link Exception		   				 Statement
hi link Float			   				 Number
hi link HelpCommand		   				 Statement
hi link HelpExample		   				 Statement
hi link Include			   				 PreProc
hi link Keyword			   				 Statement
hi link Label			   				 Statement
hi link Macro			   				 PreProc
hi link Operator		   				 Statement
hi link PreCondit		   				 PreProc
hi link Repeat			   				 Statement
hi link SpecialChar		   				 Special
hi link SpecialComment	   				 Special
hi link StorageClass	   				 Type
hi link Structure		   				 Type
hi link Tag				   				 Special
hi link Typedef			   				 Type

hi link htmlEndTag		   				 htmlTagName
hi link htmlLink		   				 Function
hi link htmlSpecialTagName 				 htmlTagName
hi link htmlTag			   				 htmlTagName
hi link xmlTag			   				 Statement
hi link xmlTagName		   				 Statement
hi link xmlEndTag		   				 Statement

hi link markdownItalic	   				 Preproc

hi link diffBDiffer		   				 WarningMsg
hi link diffCommon		   				 WarningMsg
hi link diffDiffer		   				 WarningMsg
hi link diffIdentical	   				 WarningMsg
hi link diffIsA			   				 WarningMsg
hi link diffNoEOL		   				 WarningMsg
hi link diffOnly		   				 WarningMsg
hi link diffRemoved		   				 WarningMsg
hi link diffAdded		   				 String
