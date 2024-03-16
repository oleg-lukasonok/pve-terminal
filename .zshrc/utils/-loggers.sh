#!/bin/zsh
#
# TOBE ADDED --> Licence & Copyright Disclaimer
#
_echoInfo() {
  echo -e "\033[1;36m$1\033[0m"
}

_echoInfoYellow() {
  echo -e "\033[1;33m$1\033[0m"
}

_echoInfoSeparator() {
  _echoInfo "# ---------------------------------------------------------"
}

_echoError() {
  echo -e "\033[1;31m$1\033[0m"
}
