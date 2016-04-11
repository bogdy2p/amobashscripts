#!/bin/bash
. ./bashconfiguration.sh;

echo 'Disabling cache';
cd $HtdocsFolder;
$PhpPath ../tools/n98-magerun.phar cache:disable;

