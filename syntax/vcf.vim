" Language:    vCard
" Location:    syntax/vcf.vim
" Website:     https://github.com/axvr/ical.vim
" Maintainer:  Alex Vear <alex@vear.uk>
" License:     CC0  (Public domain)
" RFCs:        <https://datatracker.ietf.org/doc/html/rfc6350>

if exists("b:current_syntax")
    finish
endif

" The vCard format is case insensitive.
syntax case ignore

syn match iCalDelimiter /[:;,=]/ contained

syn match iCalEscaped /\\[,;n\\]/ contained
syn match iCalDate /\<[0-9]\{8}\(T[0-9]\{6}Z\?\)\?\>/ contained
syn region iCalText start=// skip=/^ / end=/^/
            \ contained contains=iCalEscaped,@Spell,iCalDate

syn match iCalPropertyKey /^\k\+/
            \ contains=iCalProperty,iCalCustomProperty,iCalDelimiter
            \ nextgroup=iCalParameterList,iCalPropertyValue

syn match iCalParameter /\k\+[=,][^:;]\+/
            \ contains=iCalDelimiter,iCalQuotedParamVal
            \ nextgroup=iCalParameterList,iCalPropertyValue
            \ contained skipnl skipwhite
syn region iCalQuotedParamVal start=/"/ skip=/\\"/ end=/"/ contained
syn match iCalParameterList /;/
            \ contains=iCalDelimiter nextgroup=iCalParameter contained
syn match iCalPropertyValue /:/
            \ contains=iCalDelimiter nextgroup=iCalParameter,iCalText contained

syn keyword iCalObject contained BEGIN END
syn match iCalObjectLine /^\(BEGIN\|END\):\?/
            \ contains=iCalObject,iCalDelimiter nextgroup=iCalComponent

syn keyword iCalComponent contained VCARD

syn match iCalCustomProperty /X-[A-Z-]\+/ contained
syn keyword iCalProperty contained
            \ SOURCE KIND XML FN N NICKNAME PHOTO BDAY ANNIVERSARY GENDER ADR
            \ TEL EMAIL IMPP LANG TZ GEO TITLE ROLE LOGO ORG MEMBER RELATED
            \ CATEGORIES NOTE PRODID REV SOUND UID CLIENTPIDMAP URL VERSION
            \ KEY FBURL CALADRURI CALURI

syn keyword iCalValue contained
            \ BOOLEAN DATE DATE-AND-OR-TIME DATE-TIME FLOAT INTEGER
            \ LANGUAGE-TAG TEXT TIME TIMESTAMP URI UTC-OFFSET

hi def link iCalProperty PreProc
hi def link iCalObject Label
hi def link iCalComponent Type
hi def link iCalDate String
hi def link iCalParameter Identifier
hi def link iCalValue Keyword
hi def link iCalCustomProperty Warning
hi def link iCalDelimiter Delimiter
hi def link iCalEscaped Comment
hi def link iCalQuotedParamVal String

let b:current_syntax = "iCal"
