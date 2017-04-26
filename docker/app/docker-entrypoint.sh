#!/bin/bash

set -e

python3 /app/manage.py migrate && \
    python3 /app/manage.py runserver

while :; do
  sleep 300
done

exec "$@"
