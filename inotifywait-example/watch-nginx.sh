#!/bin/bash
#
# DISCLAIMER: not robust implementation; just for demo.
#

{
  echo "Starting nginx..."
  nginx "$@" && exit 1
} &


while true; do
  if [[ "$(inotifywatch -e modify,create,delete,move -t 15 /etc/nginx/ 2>&1)" =~ filename ]]; then
    echo "Try to verify updated nginx config..."
    nginx -t
    if [ $? -ne 0 ]; then
      echo "ERROR: New configuration is invalid!!"
    else
      echo "Reloading nginx with new config..."
      nginx -s reload
    fi
  fi;
done
