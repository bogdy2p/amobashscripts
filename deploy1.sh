#!/bin/bash
. ./bashconfiguration.sh;

echo 'Deploy1 . Boilerplate + Cleanup';
cd $HtdocsFolder;
../tools/modman deploy Boilerplate_Base;
echo "sleeping 100 after deployed boilerplatebase";
sleep 100;
../tools/modman deploy Amorana_Cleanup;

