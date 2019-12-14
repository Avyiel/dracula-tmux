<div align="center"><a href="https://draculatheme.com/" target="_blank"><img src="https://draculatheme.com/assets/img/icons/dracula.svg" width="400"/></a></div>

<p align="center">A clean and elegant <a href="https://draculatheme.com/" target="_blank">Dracula</a> <a href="https://tmux.github.io" target="_blank">tmux</a> color theme.</p>

<p align="center">Designed for a fluent and clear workflow based on the <a href="https://www.nordtheme.com" target="_blank">Nord tmux</a> theme.</p>

### Quick Start

Thanks to existing plugin managers for tmux, Nord tmux can be installed for all platforms in a uniform way within a few lines of codes. The recommended manager is [tpm][gh-tmux-plugins/tpm], but any other manager like [tundle][gh-javier-lopez/tundle] can also be used.

To automatically download and activate Dracula tmux, follow the install instructions for [tpm][gh-tmux-plugins/tpm] and

1. add `set -g @plugin "avyiel/dracula-tmux"` to your [`tmux.conf`][tmux-man-tmux.conf], by default `.tmux.conf` located in your [home directory][wiki-home_dir]
2. press the default key binding `prefix` + <kbd>I</kbd> to fetch- and install the plugin

Also see [_tpm's_ install instructions][gh-tpm-docs-install-plugins] for more details.


---

<p align="center">Copyright &copy; 2019-present <a href="https://lucasvienna.dev" target="_blank">Lucas Vienna</a></p>
<p align="center">Copyright &copy; 2017-present <a href="https://www.arcticicestudio.com" target="_blank">Arctic Ice Studio</a> and <a href="https://www.svengreb.de" target="_blank">Sven Greb</a></p>

<p align="center"><a href="https://github.com/avyiel/dracula-tmux/blob/develop/LICENSE.md"><img src="https://img.shields.io/static/v1.svg?style=flat-square&label=License&message=MIT&logoColor=f8f8f2&logo=github&colorA=282a36&colorB=6272a4"/></a></p>

[gh-javier-lopez/tundle]: https://github.com/javier-lopez/tundle
[gh-tmux-plugins/tpm]: https://github.com/tmux-plugins/tpm
[gh-tpm-docs-install-plugins]: https://github.com/tmux-plugins/tpm#installing-plugins
[tmux-man-tmux.conf]: http://man.openbsd.org/OpenBSD-current/man1/tmux.1#FILES
[wiki-home_dir]: https://en.wikipedia.org/wiki/Home_directory
