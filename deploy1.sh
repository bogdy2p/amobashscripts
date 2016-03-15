#!/bin/bash
. ./bashconfiguration.sh;

echo 'Deploy1 . Boilerplate + Cleanup';
cd $HtdocsFolder;
../tools/modman deploy Boilerplate_Base;
../tools/modman deploy Amorana_Cleanup;

