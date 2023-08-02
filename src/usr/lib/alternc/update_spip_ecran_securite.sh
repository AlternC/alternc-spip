#!/bin/bash

ecran_securite_file_path="/usr/share/php/spip/ecran_securite.php"

wget -qO ${ecran_securite_file_path} https://git.spip.net/spip-contrib-outils/securite/raw/branch/master/ecran_securite.php
chmod 644 ${ecran_securite_file_path}