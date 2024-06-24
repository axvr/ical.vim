" Language:    iCalendar
" Location:    syntax/ical.vim
" Website:     https://github.com/axvr/ical.vim
" Maintainer:  Alex Vear <alex@vear.uk>
" License:     CC0  (Public domain)
" RFCs:        <https://datatracker.ietf.org/doc/html/rfc5545>
"              <https://datatracker.ietf.org/doc/html/rfc7986>

if exists("b:current_syntax")
    finish
endif

" The iCalendar format is case insensitive.
syntax case ignore

syn match iCalDelimiter /[:;,=]/ contained

syn match iCalEscaped /\\[,;n\\]/ contained
syn match iCalDate /[0-9]\{8}T[0-9]\{6}Z\?/ contained
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

syn keyword iCalComponent contained
            \ VCALENDAR VEVENT VTODO VJOURNAL VFREEBUSY VTIMEZONE VALARM STANDARD DAYLIGHT

syn match iCalCustomProperty /X-[A-Z-]\+/ contained
syn keyword iCalProperty contained
            \ CALSCALE METHOD PRODID VERSION ATTACH CATEGORIES CLASS COMMENT DESCRIPTION
            \ GEO LOCATION PERCENT-COMPLETE PRIORITY RESOURCES STATUS SUMMARY COMPLETED
            \ DTEND DUE DTSTART DURATION FREEBUSY TRANSP TZID TZNAME TZOFFSETFROM
            \ TZOFFSETTO TZURL ATTENDEE CONTACT ORGANIZER RECURRENCE-ID RELATED-TO URL UID
            \ EXDATE EXRULE RDATE RRULE ACTION REPEAT TRIGGER CREATED DTSTAMP
            \ LAST-MODIFIED SEQUENCE REQUEST-STATUS
            \ NAME REFRESH-INTERVAL SOURCE COLOR IMAGE CONFERENCE

syn keyword iCalValue contained
            \ BINARY BOOLEAN CAL-ADDRESS DATE DATE-TIME DURATION FLOAT INTEGER
            \ PERIOD RECUR TEXT TIME URI UTC-OFFSET
            \ INDIVIDUAL GROUP RESOURCE ROOM UNKNOWN
            \ FREE BUSY BUSY-UNAVAILABLE BUSY-TENTATIVE
            \ NEEDS-ACTION ACCEPTED DECLINED TENTATIVE DELEGATED COMPLETED IN-PROCESS
            \ CONFIRMED CANCELLED
            \ CHILD PARENT SIBLING
            \ CHAIR REQ-PARTICIPANT OPT-PARTICIPANT NON-PARTICIPANT
            \ AUDIO DISPLAY EMAIL PROCEDURE
            \ PUBLIC PRIVATE CONFIDENTIAL
            \ BADGE GRAPHIC FULLSIZE THUMBNAIL
            \ AUDIO CHAT FEED MODERATOR PHONE SCREEN VIDEO

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
