#!/bin/bash
. ./bashconfiguration.sh;

cd $HtdocsFolder;
$PhpPath ../tools/n98-magerun.phar sys:setup:run;