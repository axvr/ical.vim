" Language:    vCard
" Location:    syntax/vcard.vim
" Website:     https://github.com/axvr/ical.vim
" Maintainer:  Alex Vear <alex@vear.uk>
" License:     CC0  (Public domain)
" RFCs:        <https://datatracker.ietf.org/doc/html/rfc6350>

if exists("b:current_syntax") && b:current_syntax !=# 'iCal'
    finish
endif

setlocal syntax=ical.vcard

syn clear iCalComponent
syn keyword iCalComponent contained VCARD

syn clear iCalProperty
syn keyword iCalProperty contained
            \ SOURCE KIND XML FN N NICKNAME PHOTO BDAY ANNIVERSARY GENDER ADR
            \ TEL EMAIL IMPP LANG TZ GEO TITLE ROLE LOGO ORG MEMBER RELATED
            \ CATEGORIES NOTE PRODID REV SOUND UID CLIENTPIDMAP URL VERSION
            \ KEY FBURL CALADRURI CALURI

syn clear iCalValue
syn keyword iCalValue contained
            \ BOOLEAN DATE DATE-AND-OR-TIME DATE-TIME FLOAT INTEGER
            \ LANGUAGE-TAG TEXT TIME TIMESTAMP URI UTC-OFFSET

let b:current_syntax = "vCard"
