#!/bin/bash
. ./bashconfiguration.sh;

echo 'Deploy2 . Porto Theme.';
cd $HtdocsFolder;
$PhpPath ../tools/modman deploy porto_theme;