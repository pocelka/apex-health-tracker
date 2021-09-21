#!/bin/bash

if [ -z "${BASH_SOURCE[0]}" ] ; then
  SCRIPT_DIR="$( cd "$( dirname "$0" )" >/dev/null 2>&1 && pwd )"
else
  SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
fi

PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

source "${PROJECT_DIR}/tools/secret.sh"
source "${PROJECT_DIR}/tools/functions.sh"

if [ -z "$1" ] ; then
  echo -e "${RED}Appex application ID was not specified as first argument.${RESET}"
  exit 1
else
  APEX_APP_ID=$1
fi

${SQL} /nolog << EOF
connect ${DB_USER}/${DB_PASS}@${DB_TNS}
apex export -applicationid ${APEX_APP_ID} -split -skipExportDate -dir ${PROJECT_DIR}/source/apex
EOF

mv "${PROJECT_DIR}/source/apex/f${APEX_APP_ID}/"* "${PROJECT_DIR}/source/apex"
rm -rf "${PROJECT_DIR}/source/apex/f${APEX_APP_ID}/"

exit 0