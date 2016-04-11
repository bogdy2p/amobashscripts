#!/bin/bash
############################################################################
############################################################################
#Configuration For all scripts
ApacheFolder="/home/www/amora_new";
GitFolder=$ApacheFolder'/htdocs/amorana-v2/production/releases/current';
HtdocsFolder=$GitFolder'/htdocs';
ScriptsFolder=$GitFolder'/scripts';
DatabaseName='amora_new';
DatabasePwd='8B1W4ZIJvcVY8rpLjbN8JCNAsJ';
DatabaseDump='/home/www/amora_new/08-april-2016.sql';
SymlinkableMediaFolder='/htdocs/amorana-v2/production/shared/media';
AdminUsername='admin';
AdminPassword='admin123';
AdminEmail='bogdan.popa@reea.net';
LiveUrl='http://new.amorana.ch/';
GitAdress='http://git.reea.net/reea/amorana.git';
############################################################################
############################################################################
echo "Configuration Imported.";
