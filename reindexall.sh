#!/bin/bash
. ./bashconfiguration.sh;

cd $HtdocsFolder;
$PhpPath ../tools/n98-magerun.phar index:reindex:all;

