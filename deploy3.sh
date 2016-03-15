#!/bin/bash
. ./bashconfiguration.sh;


echo 'Deploy ALL';
cd $HtdocsFolder;
../tools/modman deploy-all;