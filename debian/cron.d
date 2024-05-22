# /etc/cron.d/spip_ecran_secu: crontab entries for the alternc-spip package
#
SHELL=/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

0 0 * * * root sleep $(( RANDOM \% 86400 )) && /usr/lib/alternc/update_spip_ecran_securite.sh
