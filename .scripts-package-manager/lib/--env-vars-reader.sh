#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

export LOCAL_DIR_HOME=$(pwd)
export LOCAL_DIR_SCRIPTS_PACKAGE_MANAGER="${LOCAL_DIR_HOME}/.scripts-package-manager"
export LOCAL_DIR_SCRIPTS_PACKAGE_MANAGER_DEPENDENCIES="${LOCAL_DIR_SCRIPTS_PACKAGE_MANAGER}/dependencies"
export LOCAL_DIR_SCRIPTS="${LOCAL_DIR_HOME}/.scripts"
export LOCAL_DIR_SCRIPTS_GIT_IGNORE="${LOCAL_DIR_SCRIPTS}/.gitignore"

mkdir -p "${LOCAL_DIR_SCRIPTS_PACKAGE_MANAGER}"
mkdir -p "${LOCAL_DIR_SCRIPTS}"

export SHELL_PACKAGE_MANAGER_PLACEHOLDER="SHELL_PACKAGE_MANAGER_PLACEHOLDER"

ALL_ARGS=("$@")
while [[ "$#" -gt 0 ]]; do
    case $1 in
    --shell-package-MANAGER-placeholder)
        export SHELL_PACKAGE_MANAGER_PLACEHOLDER="$2"
        ;;
    *) ;;
    esac
    shift
done
set -- "${ALL_ARGS[@]}"
