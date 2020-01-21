" syntax/kpl.vim

syntax keyword kplTodos TODO XXX FIXME NOTE

syntax keyword kplKeywords
   \ if
   \ else
   \ endIf
   \ var
   \ endMethod
   \ endBehavior
   \ endClass
   \ return
   \ while
   \ endWhile
   \ methods
   \ fields
   \ header
   \ code
   \ for
   \ endFor
   \ endFunction
   \ endCode

syntax match kplNumber "\v<\d+>"
syntax match kplNumber "\v<\d+\.\d+>"
syntax match kplNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match kplNumber "\v<0x\x+([Pp]-?)?\x+>"
syntax match kplNumber "\v<0b[01]+>"
syntax match kplNumber "\v<0o\o+>"

syn match kplOperator /[-+%<>!&|^*=]=\?/
syn match kplOperator /\/\%(=\|\ze[^/*]\)/
syn match kplOperator /:=\|||\|<-\|++\|--/

syntax region kplString start=/"/ skip=/\\"/ end=/"/ oneline contains=kplInterpolatedWrapper
syntax region kplInterpolatedWrapper start="\v\\\(\s*" end="\v\s*\)" contained containedin=kplString contains=kplInterpolatedString
syntax match kplInterpolatedString "\v\w+(\(\))?" contained containedin=kplInterpolatedWrapper

syn match kplComment '--.*$' display contains=kplTodos

syn keyword kplStatement behavior superclass class method new nextgroup=kplFunction skipwhite
syn match kplFunction '[a-zA-Z_][a-zA-Z0-9_]*' display contained

syn keyword kplType int double char bool
syn keyword kplType ptr to

syn keyword kplImports uses nextgroup=kplType skipwhite
syn match kplType '[a-zA-Z_][a-zA-Z0-9_]*' display contained

syn keyword kplConstant null

highlight default link kplTodos Todo
highlight default link kplComment Comment

highlight default link kplString String
highlight default link kplInterpolatedWrapper Delimiter
highlight default link kplNumber Number
highlight default link kplBoolean Boolean
highlight default link kplConstant Constant
highlight default link kplOperator Operator
highlight default link kplKeywords Keyword
highlight default link kplStructure Structure
highlight default link kplType Type
highlight default link kplImports Include
highlight default link kplStatement Statement
highlight default link kplFunction Function
