#!/bin/bash

set -e

hostname="$1"
shift
cmd="$@"

cursor=.
while true ; do
  response=$(curl --write-out %{http_code} -k --silent --output /dev/null $hostname)
  if [ "${response}" == 209 ] ; then
    break
  fi
  cursor=$cursor.
  echo -ne "$hostname is not up, sleeping$cursor\r"
  sleep 3
done

>&2 echo "API is up - executing command"
exec $cmd
