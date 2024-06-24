" Language:    vCard
" Location:    ftdetect/vcard.vim
" Website:     https://github.com/axvr/ical.vim
" Maintainer:  Alex Vear <alex@vear.uk>
" License:     CC0  (Public domain)
" RFCs:        <https://datatracker.ietf.org/doc/html/rfc6350>

autocmd BufRead,BufNewFile *.vcf,*.vcard setlocal filetype=vcard
