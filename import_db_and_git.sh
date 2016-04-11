#!/bin/bash
. ./bashconfiguration.sh;

MUSER="$DatabaseName"
MPASS="$DatabasePwd"
MDB="$DatabaseName"
 
# Detect paths
MYSQL="/usr/local/mysql/Percona-Server-5.6.15-rel63.0-519-static-openssl-1.0.1e.Linux.x86_64/bin/mysql";
AWK=$(which awk)
GREP=$(which grep)

echo "$MUSER , $MPASS , $MDB   -- FOR TESTING PURPOSES";

# TABLES=$($MYSQL -u $MUSER -p$MPASS $MDB -e 'show tables' | $AWK '{ print $1}' | $GREP -v '^Tables' )

# for t in $TABLES
# do
#         echo "Deleting $t table from $MDB database..."
#         $MYSQL -u $MUSER -p$MPASS $MDB -e "USE amora_new;SET FOREIGN_KEY_CHECKS=0; drop table $t; SET FOREIGN_KEY_CHECKS=1;"
# done


echo "Starting git grab of $GitAdress into $GitFolder";
git clone $GitAdress $GitFolder;
echo 'Git cloned';
echo '------------------';
cd $GitFolder;

cd htdocs;
$PhpPath $ComposerAdress install;

# $ComposerAdress install;
echo 'Composer installed';
echo '------------------';

# rsync -avz $SettingsCsvFile $GitFolder/Configuration/settings.csv;
# echo 'Settings.csv copied.';
# echo '------------------';

