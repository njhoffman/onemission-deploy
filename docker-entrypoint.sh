#!/bin/bash

touch /usr/local/var/test.log

echo "Initializing logging for php-fpm..."

mkdir -p /usr/local/var/log/php-fpm/ \
  && touch /usr/local/var/log/php-fpm/php.error.log \
  && chmod 777 /usr/local/var/log/php-fpm/php.error.log

echo "Executing $@"
exec "$@"
