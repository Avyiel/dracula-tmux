#!/usr/bin/env bash
# Copyright (C) 2017-present Arctic Ice Studio <development@arcticicestudio.com>
# Copyright (C) 2017-present Sven Greb <development@svengreb.de>
# Copyright (C) 2019-present Lucas Vienna <dev@lucasvienna.dev>

# Project:    Dracula tmux
# Repository: https://github.com/avyiel/dracula-tmux
# Upstream:   https://github.com/arcticicestudio/nord-tmux
# License:    MIT
# References:
#   https://tmux.github.io
#   https://github.com/dracula/dracula-theme

DRACULA_TMUX_COLOR_THEME_FILE=src/dracula.conf
DRACULA_TMUX_VERSION=0.1.0
DRACULA_TMUX_STATUS_CONTENT_FILE="src/status-content.conf"
DRACULA_TMUX_STATUS_CONTENT_NO_PATCHED_FONT_FILE="src/status-content-no-patched-font.conf"
DRACULA_TMUX_STATUS_CONTENT_OPTION="@dracula_tmux_show_status_content"
DRACULA_TMUX_NO_PATCHED_FONT_OPTION="@dracula_tmux_no_patched_font"
_current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

__cleanup() {
  unset -v DRACULA_TMUX_COLOR_THEME_FILE DRACULA_TMUX_VERSION
  unset -v DRACULA_TMUX_STATUS_CONTENT_FILE DRACULA_TMUX_STATUS_CONTENT_NO_PATCHED_FONT_FILE
  unset -v DRACULA_TMUX_STATUS_CONTENT_OPTION DRACULA_TMUX_NO_PATCHED_FONT_OPTION
  unset -v _current_dir
  unset -f __load __cleanup
}

__load() {
  tmux source-file "$_current_dir/$DRACULA_TMUX_COLOR_THEME_FILE"

  local status_content=$(tmux show-option -gqv "$DRACULA_TMUX_STATUS_CONTENT_OPTION")
  local no_patched_font=$(tmux show-option -gqv "$DRACULA_TMUX_NO_PATCHED_FONT_OPTION")

  if [ "$status_content" != "0" ]; then
    if [ "$no_patched_font" != "1" ]; then
      tmux source-file "$_current_dir/$DRACULA_TMUX_STATUS_CONTENT_FILE"
    else
      tmux source-file "$_current_dir/$DRACULA_TMUX_STATUS_CONTENT_NO_PATCHED_FONT_FILE"
    fi
  fi
}

__load
__cleanup
