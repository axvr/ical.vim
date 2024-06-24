" Language:    iCalendar
" Location:    ftdetect/ical.vim
" Website:     https://github.com/axvr/ical.vim
" Maintainer:  Alex Vear <alex@vear.uk>
" License:     CC0  (Public domain)
" RFCs:        <https://datatracker.ietf.org/doc/html/rfc5545>
"              <https://datatracker.ietf.org/doc/html/rfc7986>

autocmd BufRead,BufNewFile *.ics,*.ical,*.ifb,*.icalendar setlocal filetype=ical
