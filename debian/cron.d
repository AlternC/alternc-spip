# /etc/cron.d/spip_ecran_secu: crontab entries for the alternc-spip package
#
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

0 */24 * * * root perl -e 'sleep int(rand(86400))' && /usr/lib/alternc/update_spip_ecran_securite.sh
