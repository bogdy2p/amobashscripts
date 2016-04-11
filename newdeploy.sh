#!/bin/bash
. ./bashconfiguration.sh;

#Do the prechecks script
echo "prechecks.sh";
sh prechecks.sh;
#Create and import database script + git grab
# echo "import_db_and_git.sh";
# sh import_db_and_git.sh;

#Symlink media folder and rest of reuqired files.
echo "symlinks.sh";
sh symlinks.sh;

#Manually remove cache
echo "manual_cache.sh";
sh manual_cache.sh;

#Deploy Boilerplate + Cleanup + Apply Settings.;
echo "deplyo1.sh";
sh deploy1.sh;

#Apply settings stage1 (after boilerplate + cleanup deploy);
echo "applysettings.sh";
sh applysettings.sh;

# #Disable cache;
echo "disablecache.sh";
sh disablecache.sh;

# #Sys setup run 1
echo "syssetup.sh";
sh syssetup.sh;

# #Deploy-porto theme;
echo "deploy2.sh";
sh deploy2.sh;

# #Sys setup run 2
echo "syssetup.sh";
sh syssetup.sh;

# #Apply settings stage2 (after porto theme deploy);
echo "applysettings.sh";
sh applysettings.sh;

#Deploy all the rest of the modules
echo 'deployall';
sh deploy3.sh;

#Manually remove cache part2
echo "manual_cache.sh";
sh manual_cache.sh;

# #Sys setup run 3
echo "syssetup.sh";
sh syssetup.sh;

#Create administrative user
echo "admincreate.sh";
sh createadmin.sh;

#Run cleanup logs script
echo "magentocleanuplogs.sh";
sh magentocleanuplogs.sh;

#Run core_url_backup script
echo "magentocoreurlbackup.sh";
sh magentocoreurlbackup.sh;

#Reindex all magento data;
echo 'reindex all magento';
sh reindexall.sh;

echo 'simulate site access';
sh simulate_access.sh;

# #Apply settings stage3 (Last Apply);
echo "applysettings.sh";
sh applysettings.sh;

echo "SUCCESS. Please access $LiveUrl now and test !";