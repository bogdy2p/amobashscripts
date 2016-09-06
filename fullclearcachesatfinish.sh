#!/bin/bash

PROJECTPATH="/var/www/html/amorana2/htdocs";

cd $PROJECTPATH;
# ls
../tools/n98-magerun.phar cache:flush
../tools/n98-magerun.phar cache:clean
../tools/n98-magerun.phar cache:flush