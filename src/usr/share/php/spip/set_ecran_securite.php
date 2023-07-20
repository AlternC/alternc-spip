<?php

//By default disable LOAD check feature
//User can enable this feature from htacess
if (empty($_SERVER['ENABLE_SPIP_ECRAN_SECURITE_LOAD'])) {
    if (!defined('_ECRAN_SECURITE_LOAD')) {
        define('_ECRAN_SECURITE_LOAD', 0);
    }
}

if (empty($_SERVER['DISABLE_SPIP_ECRAN_SECU'])) {
    include_once('/usr/share/php/spip/ecran_securite.php');
}