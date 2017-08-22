nginx: nginx -g 'daemon off;'
grab: bash -c "while true; do tv_grab_il --config-file /root/.xmltv/tv_grab_il.conf --output /var/www/html/il.xmltv ; set -e; sleep $(( 60*60*8 )); set +e; done"