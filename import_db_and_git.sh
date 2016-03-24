#!/bin/bash
. ./bashconfiguration.sh;

echo "Creating database $DatabaseName .";
mysql -u root -p$DatabasePwd -e "CREATE DATABASE IF NOT EXISTS $DatabaseName";
echo 'Starting database import.';
mysql -u root -p$DatabasePwd -D $DatabaseName < $DatabaseDump;
echo '------------------';
echo 'Starting git grab';
git clone $GitAdress $GitFolder;
echo 'Git cloned';
echo '------------------';
cd $GitFolder;

composer install;
echo 'Composer installed';
echo '------------------';

rsync -avz $SettingsCsvFile $GitFolder/Configuration/settings.csv;
echo 'Settings.csv copied.';
echo '------------------';
