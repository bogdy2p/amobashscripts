#!/bin/bash
. ./bashconfiguration.sh;

echo 'Applying settings...';
cd $HtdocsFolder;
$GitFolder/tools/apply.php integration $GitFolder/Configuration/settings.csv;