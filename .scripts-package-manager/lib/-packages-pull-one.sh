#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

_scriptsPackageManager_packages_pullOne() {
    local FUNCTION_NAME="_scriptsPackageManager_packages_pullManyByQuery"

    local SCRIPTS_PACKAGE_NAME="${1}"
    local SCRIPTS_PACKAGE_GIT_URL="${2}"

    if
        [ -z "${SCRIPTS_PACKAGE_NAME}" ]
    then
        echo "# ERROR # ${FUNCTION_NAME} #"
        echo "# ERROR # ${FUNCTION_NAME} # Missing required 1st parameter SCRIPTS_PACKAGE_NAME" >&2
        echo "# ERROR # ${FUNCTION_NAME} # "
        exit 1
    fi
    if
        [ -z "${SCRIPTS_PACKAGE_GIT_URL}" ]
    then
        echo "# ERROR # ${FUNCTION_NAME} # "
        echo "# ERROR # ${FUNCTION_NAME} # Missing required 2nd parameter SCRIPTS_PACKAGE_GIT_URL" >&2
        echo "# ERROR # ${FUNCTION_NAME} # "
        exit 1
    fi

    echo "# INFO  # ${FUNCTION_NAME} # Package --> ${SCRIPTS_PACKAGE_GIT_URL} --> remove local instance"

    cd "${LOCAL_DIR_SCRIPTS}"
    rm -rf "${SCRIPTS_PACKAGE_NAME}-tmp"
    rm -rf "${SCRIPTS_PACKAGE_NAME}"

    echo "# INFO  # ${FUNCTION_NAME} # Package --> ${SCRIPTS_PACKAGE_GIT_URL} --> clone local temporary instance"
    echo
    cd "${LOCAL_DIR_SCRIPTS}"
    git clone "${SCRIPTS_PACKAGE_GIT_URL}" "${SCRIPTS_PACKAGE_NAME}-tmp"
    echo

    echo "# INFO  # ${FUNCTION_NAME} # Package --> ${SCRIPTS_PACKAGE_GIT_URL} --> move into local instance"
    mv "${SCRIPTS_PACKAGE_NAME}-tmp/.scripts/${SCRIPTS_PACKAGE_NAME}" "${SCRIPTS_PACKAGE_NAME}"

    echo "# INFO  # ${FUNCTION_NAME} # Package --> ${SCRIPTS_PACKAGE_GIT_URL} --> remove local temporary instance"
    rm -rf "${SCRIPTS_PACKAGE_NAME}-tmp"

    cd "${LOCAL_DIR_HOME}"
}
