#!/bin/bash

ecran_securite_file_path="/usr/share/php/spip/ecran_securite.php"

ecran_securite_content_git=$(wget -qO -\
    --header='accept: application/json' \
    'https://git.spip.net/api/v1/repos/spip-contrib-outils/securite/contents/ecran_securite.php'\
)

ecran_securite_content_sha=$( jq -r  '.sha' <<< "${ecran_securite_content_git}" )
ecran_securite_content_size=$( jq -r  '.size' <<< "${ecran_securite_content_git}" )
ecran_securite_content_encoded=$( jq -r  '.content' <<< "${ecran_securite_content_git}" )
ecran_securite_content_decoded=$(echo "${ecran_securite_content_encoded}" | base64 --decode - )

if [[ $( (echo -ne "blob ${ecran_securite_content_size}\0";echo -n "${ecran_securite_content_decoded}") | sha1sum | head -c 40) == "${ecran_securite_content_sha}" ]]; then
    echo -n "${ecran_securite_content_decoded}" > "${ecran_securite_file_path}"
    exit 0
fi

exit 1