#!/bin/bash

#install other global stuff
npm install -g --production gulp --user 'root'

echo "------------------------------ — Installing/updating NPM modules, it might take a while, go take a leak or have a healthy snack... — -----------------------------------"
OUT=$([ -d "/tmp/deployment/application" ] && cd /tmp/deployment/application && /opt/elasticbeanstalk/node-install/node-v$NODE_VER-linux-$ARCH/bin/npm install --production) || error_exit "Failed to run npm install.  $OUT" $?
echo $OUT

chmod -R o+r /var/node_modules
