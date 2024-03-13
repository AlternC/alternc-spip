#!/bin/bash

ecran_securite_file_path="/usr/share/php/spip/ecran_securite.php"

ecran_securite_content_git=$(wget -qO -\
    'https://git.spip.net/api/v4/projects/spip-contrib-outils%2Fsecurite/repository/files/ecran_securite.php?ref=master' \
)

ecran_securite_content_sha=$( jq -r  '.content_sha256' <<< "${ecran_securite_content_git}" )
ecran_securite_content_encoded=$( jq -r  '.content' <<< "${ecran_securite_content_git}" )
ecran_securite_content_decoded=$(echo "${ecran_securite_content_encoded}" | base64 --decode - )
ecran_securite_content_decoded_sha=$(echo -n "${ecran_securite_content_decoded}" | sha256sum | head -c 64)

if [[ "${ecran_securite_content_sha}" == "${ecran_securite_content_decoded_sha}" ]]; then
    echo -n "${ecran_securite_content_decoded}" > "${ecran_securite_file_path}"
    exit 0
fi
exit 1