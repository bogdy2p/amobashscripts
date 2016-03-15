#!/bin/bash
. ./bashconfiguration.sh;

echo 'Deploy2 . Porto Theme.';
cd $HtdocsFolder;
../tools/modman deploy porto_theme;