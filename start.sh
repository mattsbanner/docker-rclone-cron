#!/bin/sh
set -e

CRON="$CRON_SCHEDULE $COMMAND"

echo "Installing cron:"
echo "$CRON"
echo "$CRON" > /etc/crontabs/root

echo "Running command"
eval "$COMMAND"
echo "Success, waiting for cron to trigger..."

crond -f
