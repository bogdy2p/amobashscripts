#!/bin/bash
. ./bashconfiguration.sh;

cd $HtdocsFolder;
../tools/n98-magerun.phar index:reindex:all;

