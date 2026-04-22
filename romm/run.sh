#!/bin/sh
set -e

mkdir -p /romm/config /romm/resources /romm/assets /redis-data /config/romm /share/roms
touch /config/romm/romm.db

export ROMM_AUTH_SECRET_KEY="supersecretkey123changeme"
export DB_ENGINE="sqlite"
export ROMM_DB_FILE="/config/romm/romm.db"
export ROMM_DATA_DIR="/config/romm"
export ROMM_LIBRARY_DIR="/share/roms"

exec /docker-entrypoint.sh /init