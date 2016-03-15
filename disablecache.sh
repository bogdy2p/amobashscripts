#!/bin/bash
. ./bashconfiguration.sh;

echo 'Disabling cache';
cd $HtdocsFolder;
../tools/n98-magerun.phar cache:disable;

