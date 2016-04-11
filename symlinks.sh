#!/bin/bash
. ./bashconfiguration.sh;

echo 'Symlinking cleanup_logs.php';
echo "$GitFolder/scripts/cleanup_logs.php ------- $HtdocsFolder/shell/cleanup_logs.php";
ln -s $GitFolder/scripts/cleanup_logs.php $HtdocsFolder/shell/cleanup_logs.php;
echo 'Symlinking cleanup_logs.php';
echo "$GitFolder/scripts/core_url_backup.php -------- $HtdocsFolder/shell/core_url_backup.php";
ln -s $GitFolder/scripts/core_url_backup.php $HtdocsFolder/shell/core_url_backup.php
