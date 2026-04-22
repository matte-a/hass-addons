#!/bin/sh
set -e

CONFIG=/data/options.json

export ROMM_AUTH_SECRET_KEY=$(cat "$CONFIG" | python3 -c "import sys,json; print(json.load(sys.stdin)['romm_auth_secret_key'])")
export DB_ENGINE="sqlite"
export ROMM_DB_FILE="/config/romm/romm.db"
export ROMM_DATA_DIR="/config/romm"
export ROMM_LIBRARY_DIR="/share/roms"

mkdir -p /romm/config /romm/resources /romm/assets /redis-data /config/romm /share/roms
touch /config/romm/romm.db

exec /docker-entrypoint.sh /init