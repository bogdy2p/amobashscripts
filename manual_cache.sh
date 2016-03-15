#!/bin/bash
. ./bashconfiguration.sh;

cd $HtdocsFolder;
echo 'Manually deleting cache dirs';
directorypath=$HtdocsFolder'/var';
cd $directorypath;
echo "Removing all from $directorypath cache";
rm -rf cache/*;

