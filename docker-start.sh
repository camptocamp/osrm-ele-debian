#!/bin/bash
set -e

if [ -d /docker-entrypoint.d ]
then
    for f in /docker-entrypoint.d/*.sh
    do
        $f
    done
fi

/usr/local/bin/osrm-routed ${OSRM_CONFIG} -p 80 -t 8 -e 1
