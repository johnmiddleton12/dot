" Vim Syntax File
" Language: HCL
" Maintainer: Johnathan Middleton


"if exists("b:current_syntax")
    "finish
"endif
"autocmd BufRead,BufNewFile *.hcl set filetype=hcl

syn keyword basicLanguageKeywords wire register 
"syn match hclNumber '(?<!\w)\d+(?!\w)'
syn match hclComment "#.*$"

syn match hclNumber "\d\('\=\d\+\)*\(u\=l\{0,2}\|ll\=u\)\>"
syn match hclNumber "0x\x\('\=\x\+\)*\(u\=l\{0,2}\|ll\=u\)\>"
syn match hclNumber "0b[01]\('\=[01]\+\)*\(u\=l\{0,2}\|ll\=u\)\>"

"syn region celDescBlock start="{" end="}" fold transparent contains=ALLBUT,celHip,celString

syn keyword constKeywords STAT_BUB STAT_AOK STAT_HLT STAT_ADR STAT_INS STAT_PIP
syn keyword constKeywords REG_RAX REG_RSP REG_NONE
syn keyword constKeywords HALT NOP RRMOVQ IRMOVQ RMMOVQ MRMOVQ OPQ JXX CALL RET PUSHQ POPQ CMOVXX
syn keyword constKeywords ALWAYS LE LT EQ NE GE GT ADDQ SUBQ ANDQ XORQ

hi def link basicLanguageKeywords Type 
hi def link hclNumber Constant 
hi def link hclComment Comment
hi def link constKeywords PreProc 

"syntax match hclWords /^[^=]\+/
"syntax match hclValue /[^=]\+$/

"highlight hclWords ctermfg=cyan guifg=#00ffff
"highlight hclValue ctermfg=red  guifg=#ff0000l
