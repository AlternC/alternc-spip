# /etc/cron.d/spip_ecran_secu: crontab entries for the alternc-spip package
#
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

0 */24 * * * root perl -e 'sleep int(rand(86400))' && wget -O /usr/share/php/spip/ecran_securite.php https://git.spip.net/spip-contrib-outils/securite/raw/branch/master/ecran_securite.php && chmod 644 /usr/share/php/spip/ecran_securite.php