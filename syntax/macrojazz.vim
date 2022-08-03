syntax keyword MacroJazzKeywords
    \ node

syntax keyword macrojazzCond
    \ if 
    \ else 

syntax keyword macrojazzBoolean
    \ true 
    \ false

syntax match macrojazzDelimiter
    \ "\%(_\|(\|)\|{\|}\|\[\|\]\)"

syntax match macrojazzComment
    \ "//.*$"

syntax match macrojazzDocComment
    \ "///.*$"

syntax match macrojazzOperator
    \ "\%(+\|-\|*\|/\ze[^/]\|%\|~\|&\|>\|<\|%\|\.\|=\||\)"

syntax match macrojazzSType
    \ "\(:\s*\)\@<=[^\(,\|>(\)]*\(,\|\s*>\s*(\)\@="

syntax match macrojazzRType
    \ "\(:\s*\)\@<=[^:,]*\(,\|)\s*\(->\|{\)\)\@="

syntax match macrojazzNodeName
    \ "\(node\s*\)\@<=\zs\h*"

syntax match macrojazzNodeCall
    \ "@\=\h\+\((\)\@="

syntax match macrojazzNumber "\v<\d+>"
syntax match macrojazzNumber "\v<0x\x+>"
syntax match macrojazzNumber "\v<0o\o+>"
syntax match macrojazzNumber "\v<0b[01]+>"

highlight default link MacroJazzKeywords   Keyword
highlight default link macrojazzNumber     Number
highlight default link macrojazzOperator   Operator
highlight default link macrojazzSType      Type
highlight default link macrojazzRType      Type
highlight default link macrojazzComment    Comment
highlight default link macrojazzDocComment Comment
highlight default link macrojazzNodeName   Function
highlight default link macrojazzNodeCall   Function
highlight default link macrojazzBoolean    Boolean
highlight default link macrojazzCond       Conditional
highlight default link macrojazzDelimiter  Delimiter

if !exists("b:current_syntax")
    let b:current_syntax = "macrojazz"
endif
