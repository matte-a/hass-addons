#!/bin/sh
set -e

export ROMM_AUTH_SECRET_KEY=$(python3 -c "import json; d=json.load(open('/data/options.json')); print(d['romm_auth_secret_key'])")
export DB_PASSWD=$(python3 -c "import json; d=json.load(open('/data/options.json')); print(d['db_passwd'])")
export DB_HOST="core-mariadb"
export DB_PORT="3306"
export DB_NAME="romm"
export DB_USER="romm"
export ROMM_DATA_DIR="/config/romm"
export ROMM_LIBRARY_DIR="/share/roms"

mkdir -p /romm/config /romm/resources /romm/assets /redis-data /config/romm /share/roms
touch /romm/config/config.yml

exec /docker-entrypoint.sh /init