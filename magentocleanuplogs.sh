#!/bin/bash
. ./bashconfiguration.sh;

cd $HtdocsFolder/shell;
$PhpPath -f cleanup_logs.php;