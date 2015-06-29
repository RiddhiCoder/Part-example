#!/usr/bin/env bash

php -r "readfile('https://getcomposer.org/installer');" | php

./composer.phar install

make update-dev

make update-db

php setup.php