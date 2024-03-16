#!/bin/zsh
#
# TOBE ADDED --> Licence & Copyright Disclaimer
#

chmod go-w '/usr/local/share'
chmod -R go-w '/usr/local/share/zsh'

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi
