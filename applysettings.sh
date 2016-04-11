#!/bin/bash
. ./bashconfiguration.sh;

echo 'Applying settings...';
cd $HtdocsFolder;
$PhpPath $GitFolder/tools/apply.php latest $GitFolder/Configuration/settings.csv;