" Language:    vCard
" Location:    ftplugin/vcf.vim
" Website:     https://github.com/axvr/ical.vim
" Maintainer:  Alex Vear <alex@vear.uk>
" License:     CC0  (Public domain)
" RFCs:        <https://datatracker.ietf.org/doc/html/rfc6350>

setlocal iskeyword=a-z,A-Z,48-57,-

" iCalendar uses DOS line endings (CRLF)
setlocal fileformat=dos

" Maximum octet count is 75 per line.
setlocal textwidth=75

" No folding
setlocal foldmethod=manual
