syntax keyword MacroJazzKeywords
    \ if 
    \ else 
    \ node

syntax match macrojazzNumber "\v<\d+>"
syntax match macrojazzNumber "\v<0x\x+>"
syntax match macrojazzNumber "\v<0o\o+>"
syntax match macrojazzNumber "\v<0b[01]+>"

highlight default link MacroJazzKeywords Keyword
highlight default link macrojazzNumber   Number
