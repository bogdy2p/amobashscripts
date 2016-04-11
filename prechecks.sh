#!/bin/bash
. ./bashconfiguration.sh;

echo 'Starting Prechecks';
echo '------------------';

echo "Removing GIT folder if exists";
if test -e $GitFolder;
	then
		echo "WE HAVE FOUND THE GIT FOLDER";
		cd $GitFolder;
		ls -a;
	else
		echo "Continuing , git folder not found yet.";
fi

echo "Database Should be Cleaned Here Using The New Script.";

echo 'Prechecks finished.';
echo '------------------';