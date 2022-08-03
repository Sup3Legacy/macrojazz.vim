syntax keyword MacroJazzKeywords
    \ if 
    \ else 
    \ node

syntax match macrojazzComment
    \ "//.*$"

syntax match macrojazzDocComment
    \ "///.*$"

syntax match macrojazzOperator
    \ "\%(+\|-\|*\|/\ze[^/]\|%\|~\|&\|>\|<\|%\|\.\|=\)"

syntax match macrojazzSType
    \ ":\s*\%({\s*\(int\|bool\)\s*\(:\s*[^$]*\)\?}\|int\|bool\)"

syntax match macrojazzNumber "\v<\d+>"
syntax match macrojazzNumber "\v<0x\x+>"
syntax match macrojazzNumber "\v<0o\o+>"
syntax match macrojazzNumber "\v<0b[01]+>"

highlight default link MacroJazzKeywords   Keyword
highlight default link macrojazzNumber     Number
highlight default link macrojazzOperator   Operator
highlight default link macrojazzSType      Type
highlight default link macrojazzComment    Comment
highlight default link macrojazzDocComment Comment

if !exists("b:current_syntax")
    let b:current_syntax = "macrojazz"
endif
