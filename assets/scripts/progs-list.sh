#!/bin/bash

pass=$1
log_setup=$HOME/ubuntu-setup.log


chmod +x install-apps-snap.sh
./install-apps-snap.sh






echo "----------------------------------------------------------------------"



echo "----------------------------------------------------------------------"



#backup do log no syslog do linux
logger -p user.info -t "ubuntu-setup" -f $log_setup
