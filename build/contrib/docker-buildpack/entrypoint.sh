#!/bin/bash

chown nobody:nogroup /xcsoar

# Run rsync as root and all other commands as nobody within the /xcsoar dir
if [ "$1" = "rsync" ]; then
    exec "$@"
else
    cd /xcsoar
    exec gosu nobody "$@"
fi
