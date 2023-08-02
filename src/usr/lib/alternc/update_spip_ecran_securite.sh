#!/bin/bash

ecran_securite_file_temp_path=$(mktemp)
ecran_securite_file_path="/usr/share/php/spip/ecran_securite.php"

ecran_securite_content_git=$(curl -sX 'GET' \
  'https://git.spip.net/api/v1/repos/spip-contrib-outils/securite/contents/ecran_securite.php' \
  -H 'accept: application/json')

ecran_securite_content_sha=$( jq -r  '.sha' <<< "${ecran_securite_content_git}" )
ecran_securite_content_encoded=$( jq -r  '.content' <<< "${ecran_securite_content_git}" )
echo "${ecran_securite_content_encoded}" | base64 --decode - > "${ecran_securite_file_temp_path}"

if [[ $(git hash-object "${ecran_securite_file_temp_path}") == "${ecran_securite_content_sha}" ]]; then
    mv "${ecran_securite_file_temp_path}" "${ecran_securite_file_path}"
    exit 0
fi

exit 1