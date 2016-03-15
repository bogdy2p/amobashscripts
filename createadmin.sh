#!/bin/bash
. ./bashconfiguration.sh;

cd $HtdocsFolder;
../tools/n98-magerun.phar admin:user:create $AdminUsername $AdminEmail $AdminPassword firstnameAdmin lastnameAdmin;