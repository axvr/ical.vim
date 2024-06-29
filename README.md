# iCal.vim

[iCalendar](https://en.wikipedia.org/wiki/ICalendar) and [vCard](https://en.wikipedia.org/wiki/VCard) syntax highlighting for Vim/Neovim.


## Installation

Installation of iCal.vim can be performed by using your preferred plugin
management solution.  If you don't have a Vim package manager I recommend using
Vim 8 packages by running the following 2 commands in your shell.

```sh
git clone https://github.com/axvr/ical.vim ~/.vim/pack/plugins/start/ical
vim +'helptags ~/.vim/pack/plugins/start/ical/doc/' +q
```


## References

### iCalendar

- [RFC 5545][]: Internet Calendaring and Scheduling Core Object Specification (iCalendar)
- [RFC 7986][]: New Properties for iCalendar

[RFC 5545]: https://datatracker.ietf.org/doc/html/rfc5545
[RFC 7986]: https://datatracker.ietf.org/doc/html/rfc7986


### vCard

- [RFC 6350][]: vCard Format Specification

[RFC 6350]: https://datatracker.ietf.org/doc/html/rfc6350


## Legal

*No Rights Reserved.*

All source code, documentation and associated files packaged with iCal.vim are
dedicated to the public domain.  A full copy of the [CC0][] (Creative Commons
Zero 1.0 Universal) public domain dedication should have been provided with this
extension in the `COPYING` file.

The author is not aware of any patent claims which may affect the use,
modification or distribution of this software.

[CC0]: https://creativecommons.org/publicdomain/zero/1.0/
