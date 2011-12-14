" Modified by Kevin to fit his tastes.
let g:colors_name="cdefault"
hi SpecialKey     term=bold ctermfg=4 guifg=Blue
hi NonText        term=bold ctermfg=12 gui=bold guifg=Blue
hi Directory      term=bold ctermfg=4 guifg=Blue
hi ErrorMsg       term=standout ctermfg=15 ctermbg=1 guifg=White guibg=Red
hi IncSearch      term=reverse cterm=reverse gui=reverse
hi Search         term=reverse ctermbg=11 guibg=Yellow
hi MoreMsg        term=bold ctermfg=2 gui=bold guifg=SeaGreen
hi ModeMsg        term=bold cterm=bold gui=bold
hi Question       term=standout ctermfg=2 gui=bold guifg=SeaGreen
hi StatusLine     term=bold,reverse cterm=bold,reverse gui=bold,reverse
hi StatusLineNC   term=reverse cterm=reverse gui=reverse
hi VertSplit      term=reverse cterm=reverse gui=reverse
hi Title          term=bold ctermfg=5 gui=bold guifg=Magenta
hi Visual         term=reverse cterm=reverse ctermbg=7 guibg=LightGrey
hi VisualNOS      term=bold,underline cterm=bold,underline gui=bold,underline
hi WarningMsg     term=standout ctermfg=1 guifg=Red
hi WildMenu       term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi Folded         term=standout ctermfg=2 ctermbg=Black  guifg=DarkBlue guibg=LightGrey
hi FoldColumn     term=standout ctermfg=4 ctermbg=11 guifg=DarkBlue guibg=Grey
hi DiffAdd        term=bold ctermbg=81 guibg=LightBlue
hi DiffChange     term=bold ctermbg=225 guibg=LightMagenta
hi DiffDelete     term=bold ctermfg=12 ctermbg=159 gui=bold guifg=Blue guibg=LightCyan
hi DiffText       term=reverse cterm=bold ctermbg=9 gui=bold guibg=Red
hi SignColumn     term=standout ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=Grey
hi SpellBad       term=reverse ctermbg=224 gui=undercurl guisp=Red
hi SpellCap       term=reverse ctermbg=81 gui=undercurl guisp=Blue
hi SpellRare      term=reverse ctermbg=225 gui=undercurl guisp=Magenta
hi SpellLocal     term=underline ctermbg=14 gui=undercurl guisp=DarkCyan
hi Pmenu          ctermbg=225 guibg=LightMagenta
hi PmenuSel       ctermbg=7 guibg=Grey
hi PmenuSbar      ctermbg=248 guibg=Grey
hi PmenuThumb     cterm=reverse gui=reverse
hi TabLine        term=underline cterm=underline ctermfg=0 ctermbg=7 gui=underline guibg=LightGrey
hi TabLineSel     term=bold cterm=bold gui=bold
hi TabLineFill    term=reverse cterm=reverse gui=reverse
hi CursorColumn   term=reverse ctermbg=7 guibg=Grey90
hi CursorLine     term=underline cterm=underline guibg=Grey90
hi Cursor         guifg=bg guibg=fg
hi lCursor        guifg=bg guibg=fg
hi MatchParen     term=reverse ctermbg=14 guibg=Cyan
"hi Comment        term=bold ctermfg=110 guifg=Blue
"hi Comment        term=bold ctermfg=191 guifg=#228B22
hi Comment        term=bold ctermfg=7 guifg=#228B22
hi Constant       term=underline ctermfg=99 guifg=Magenta
hi Special        term=bold ctermfg=5 guifg=SlateBlue
hi String         ctermfg=67
"Variables in perl
"hi Identifier     term=underline ctermfg=6 guifg=DarkCyan
hi Identifier     term=underline ctermfg=2 guifg=SeaGreen
hi Statement      term=bold ctermfg=220 gui=bold guifg=Brown
hi Repeat         term=bold ctermfg=220 gui=bold guifg=Brown
hi Conditional    term=bold ctermfg=220 gui=bold guifg=Brown
hi LineNr         term=bold ctermfg=220 gui=bold guifg=Brown
hi Label          term=underline ctermfg=220 guifg=Brown
hi PreProc        term=underline ctermfg=5 guifg=Purple
hi Type           term=underline ctermfg=2 gui=bold guifg=SeaGreen
hi Underlined     term=underline cterm=underline ctermfg=5 gui=underline guifg=SlateBlue
hi Ignore         ctermfg=15 guifg=bg
hi Error          term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red
hi Todo           term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow
hi Keyword        ctermfg=164

"hi Label           links to Statement
"hi Operator        links to Statement
"hi Keyword         links to Statement
"hi Exception       links to Statement
"hi Include         links to PreProc
"hi Define          links to PreProc
"hi Macro           links to PreProc
"hi PreCondit       links to PreProc
"hi StorageClass    links to Type
"hi Structure       links to Type
"hi Typedef         links to Type
"hi Tag             links to Special
"hi SpecialChar     links to Special
"hi Delimiter       links to Special
"hi SpecialComment  links to Special
"hi Debug           links to Special
"hi cStatement      links to Statement
"hi cLabel          links to Label
"hi cConditional    links to Conditional
"hi cRepeat         links to Repeat
"hi cTodo           links to Todo
"hi cSpecial        links to SpecialChar
"hi cFormat         links to cSpecial
"hi cString         links to String
"hi cCppString      links to cString
"hi cCharacter      links to Character
"hi cSpecialError   links to cError
"hi cSpecialCharacter  links to cSpecial
"hi cParenError     links to cError
"hi cIncluded       links to cString
"hi cCommentSkip    links to cComment
"hi cCommentString  links to cString
"hi cComment2String links to cString
"hi cCommentStartError links to cError
"hi cUserCont       cleared
"hi cUserLabel      links to Label
"hi cBitField       cleared
"hi cOctalZero      links to PreProc
"hi cCppOut         links to Comment
"hi cCppOut2        links to cCppOut
"hi cCppSkip        links to cCppOut
"hi cNumber         links to Number
"hi cFloat          links to Float
"hi cOctal          links to Number
"hi cOctalError     links to cError
"hi cNumbersCom     cleared
"hi cCppParen       cleared
"hi cParen          cleared
"hi cErrInBracket   links to cError
"hi cCppBracket     cleared
"hi cBracket        cleared
"hi cErrInParen     links to cError
"hi cNumbers        cleared
"hi cSpaceError     links to cError
"hi cCommentL       links to cComment
"hi cCommentStart   links to cComment
"hi cComment        links to Comment
"hi cCommentError   links to cError
"hi cBlock          cleared
"hi cOperator       links to Operator
"hi cType           links to Type
"hi cStructure      links to Structure
"hi cStorageClass   links to StorageClass
"hi cConstant       links to Constant
"hi cPreCondit      links to PreCondit
"hi cInclude        links to Include
"hi cDefine         links to Macro
"hi cMulti          cleared
"hi cPreProc        links to PreProc
"hi cError          links to Error
