#!/bin/sh
echo "Configuring your dev-environment"

# grab the current dir
CURRENTDIR=$(pwd)

sudo ln -s $CURRENTDIR/php/xdebug.so /usr/lib/php/extensions/no-debug-non-zts-20100525/xdebug.so
sudo ln -s $CURRENTDIR/php/php.ini /etc/php.ini
