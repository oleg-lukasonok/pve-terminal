#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts-package-manager/lib/-packages-pull-one.sh

_scriptsPackageManager_packages_pullMany() {
    local FUNCTION_NAME="_scriptsPackageManager_packages_pullManyByQuery"

    local DEPENDENCIES=$(
        cat "${LOCAL_DIR_SCRIPTS_PACKAGE_MANAGER_DEPENDENCIES}"
    )

    echo "# INFO  # ${FUNCTION_NAME} # DEPENDENCIES:"
    echo
    echo "${DEPENDENCIES}"
    echo

    rm -rf "${LOCAL_DIR_SCRIPTS_GIT_IGNORE}"
    touch "${LOCAL_DIR_SCRIPTS_GIT_IGNORE}"

    while IFS= read -r DEPENDENCY_LINE; do

        local DEPENDENCY_NAME=$(
            echo "${DEPENDENCY_LINE}" | awk -F= '{ print $1 }'
        )
        local DEPENDENCY_GIT_URL=$(
            echo "${DEPENDENCY_LINE}" | awk -F= '{ print $2 }'
        )

        _scriptsPackageManager_packages_pullOne \
            "${DEPENDENCY_NAME}" \
            "${DEPENDENCY_GIT_URL}"

        echo "${DEPENDENCY_NAME}" >>"${LOCAL_DIR_SCRIPTS_GIT_IGNORE}"

    done < <(echo "${DEPENDENCIES}")
}
