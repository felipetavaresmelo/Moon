#!/bin/bash

pass=$1
log_setup=$HOME/ubuntu-setup.log
projects=$HOME/projects

cd 
chmod +x install-apps-snap.sh
./install-apps-snap.sh $pass



#backup do log no syslog do linux
logger -p user.info -t "setup-apps" -f $log_setup
