#!/bin/bash

# https://github.com/bgruening/docker-ipython-notebook/blob/master/monitor_traffic.sh
echo "--- Monitoring Traffic ---"
while true; do
    sleep 60
    if [ `netstat -t | grep -v CLOSE_WAIT | grep ':7474' | wc -l` -lt 3 ]
    then
        pkill -f 'java'
    fi
done

