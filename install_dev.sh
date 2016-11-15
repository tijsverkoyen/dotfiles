#!/bin/sh
echo "Configuring your dev-environment"

# grab the current dir
CURRENTDIR=$(pwd)

sudo ln -s $CURRENTDIR/php/xdebug.so /usr/lib/php/extensions/no-debug-non-zts-20100525/xdebug.so
sudo ln -s $CURRENTDIR/php/php.ini /etc/php.ini

# install global npm packages for our git-hooks
npm install -g esvalidate
npm install -g csslint
gem install scss-lint

# install global composer packages for our git-hooks
composer global require "squizlabs/php_codesniffer=*"

# install gulp-cli tools globally
npm install --global gulp-cli

# install some packages we will need to build fork-cms theme stuff
brew install batik ttf2eot fontforge

# install virtualisation stuff
brew cask install virtualbox
brew cask install vagrant


vagrant plugin install vagrant-berkshelf
vagrant plugin install vagrant-bindfs
