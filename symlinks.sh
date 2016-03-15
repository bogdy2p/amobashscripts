#!/bin/bash
. ./bashconfiguration.sh;

#Symlink media folder and rest of reuqired files.
if test -d $HtdocsFolder/media; 
	then
		sudo rm -R $HtdocsFolder/media;
		echo 'Removed existing media folder';
	else
	 	echo 'Directory MEDIA does not exist.';
fi
echo 'SymLinking media folder.';
ln -s $SymlinkableMediaFolder $HtdocsFolder;

echo 'Symlinking cleanup_logs.php';
ln -s $GitFolder/scripts/cleanup_logs.php $HtdocsFolder/shell/cleanup_logs.php;
echo 'Symlinking cleanup_logs.php';
ln -s $GitFolder/scripts/core_url_backup.php $HtdocsFolder/shell/core_url_backup.php
