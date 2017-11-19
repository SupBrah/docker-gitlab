#!/bin/sh

# docker-compose up >> /var/tmp/docker-compose-up.log >/dev/null 2>&1 &! tail -f /var/tmp/docker-compose-up.log

export PATH=/bin:/usr/bin:.

export DOCKDIR='/home/davos/dev/docker-gitlab'
export LOGFILE='/var/tmp/docker-compose-up.log'

cd $DOCKDIR

if [ $? -eq 0 ]; then
    docker-compose up >> $LOGFILE >/dev/null 2>&1 &
fi
