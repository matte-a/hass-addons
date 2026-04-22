#!/bin/sh

echo "=== OPTIONS ==="
cat /data/options.json

echo "=== ENV ==="
env | grep -i romm

mkdir -p /romm/config /romm/resources /romm/assets /redis-data /config/romm /share/roms
touch /config/romm/romm.db

export DB_ENGINE="sqlite"
export ROMM_DB_FILE="/config/romm/romm.db"
export ROMM_DB="sqlite:////config/romm/romm.db"
export ROMM_DATA_DIR="/config/romm"
export ROMM_LIBRARY_DIR="/share/roms"

exec /docker-entrypoint.sh /init