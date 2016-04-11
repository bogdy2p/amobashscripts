#!/bin/bash
. ./bashconfiguration.sh;


echo 'Deploy ALL';
cd $HtdocsFolder;
$PhpPath ../tools/modman deploy-all;