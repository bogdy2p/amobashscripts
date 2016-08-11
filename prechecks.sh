#!/bin/bash
. ./bashconfiguration.sh;

echo 'Starting Prechecks';
echo '------------------';
if test -e /var/log/mysql/mysql.log;
	then
		sudo rm /var/log/mysql/mysql.log;
		echo 'Mysql restarting...';
		sudo service mysql restart;
		echo 'Mysql restarted sucesfully';
	else
		echo 'No mysql log to remove';
fi
if test -d $GitFolder; 
	then
		sudo rm -R $GitFolder;
	else 
		echo 'Directory does not exist.';
fi
# mysql -u root -p$DatabasePwd -e "DROP DATABASE IF EXISTS $DatabaseName";
echo 'Prechecks finished.';
echo '------------------';