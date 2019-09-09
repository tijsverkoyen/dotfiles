#!/bin/sh
echo "Configuring your dev-environment"

# Grab the current dir
CURRENTDIR=$(pwd)

# Symfony Local Web Server, see https://symfony.com/doc/current/setup/symfony_server.html
# → Install Symfony Client
curl -sS https://get.symfony.com/cli/installer | bash
# → Enabling TLS
symfony server:ca:install
# → Install Xdebug thru pecl
pecl install xdebug

# SumoCoders
# → Install needed packages for checking code styles and such
npm install -g esvalidate
npm install -g csslint
gem install scss_lint
composer global require "squizlabs/php_codesniffer=*"

# → Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash