#!/bin/bash
echo 'Starting cache:flush';
n98-magerun.phar cache:flush;
echo 'Starting cache:clean';
n98-magerun.phar cache:clean;
echo 'Manually deleting cache dirs';
directorypath="/var/www/html/amorana2/htdocs/var/";
cd $directorypath;
echo "Removing all from $directorypath cache";
rm -rf cache/*;
echo "Removing all from $directorypath session";
rm -rf session/*;
returnpath="/var/www/html/amorana2/htdocs";
echo 'Returning to deploy path';
cd $returnpath;