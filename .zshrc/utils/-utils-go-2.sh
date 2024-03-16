#!/bin/zsh
#
# TOBE ADDED --> Licence & Copyright Disclaimer
#

go2() {
  TMP_ARGS=("$@")

  TMP_PROJECT=""
  while [[ "$#" -gt 0 ]]; do
    case $1 in
    --project)
      export TMP_PROJECT="$2"
      ;;
    *) ;;
    esac
    shift
  done
  set -- "${TMP_ARGS[@]}"

  cd "${HOME}/projects/${TMP_PROJECT}"
}
