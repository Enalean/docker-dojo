#!/bin/bash

set -ex

if [ -f /data/config.php ]; then
    cp /data/config.php /var/www/html/owncloud/config/config.php
    chown apache:apache /var/www/html/owncloud/config/config.php
else
    chown -R apache:apache /data
fi

exec /usr/sbin/httpd -DFOREGROUND
