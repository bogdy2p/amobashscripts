#!/bin/bash
############################################################################
############################################################################
#Configuration For all scripts
ApacheFolder="/var/www/html";
GitFolder=$ApacheFolder'/amorana2';
HtdocsFolder=$GitFolder'/htdocs';
ScriptsFolder=$GitFolder'/scripts';
DatabaseName='simulate';
DatabasePwd='romania';
DatabaseDump='/home/pbc/Desktop/truncated.sql';
SymlinkableMediaFolder='/home/pbc/Desktop/amoranach_media/media';
AdminUsername='admin';
AdminPassword='admin123';
AdminEmail='bogdan.popa@reea.net';
SettingsCsvFile='/var/www/html/settings_amo.csv';
LiveUrl='https://dev.simulate.com/';
GitAdress='-b change/PhoenixVarnishToTurpentine http://git.reea.net/reea/amorana.git';
############################################################################
############################################################################
# echo "Configuration Imported.";
