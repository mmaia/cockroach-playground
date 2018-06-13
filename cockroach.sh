#!/usr/bin/env bash

set -eu

if [ "${1-}" = "shell" ]; then
  shift
  exec /bin/sh "$@"
else
  exec /cockroach/cockroach "$@"
fi

echo "going to sleep zzzzzz"
/bin/sleep 5
echo "waking up"

/cockroach/cockroach sql --insecure --execute="CREATE DATABASE playground;"