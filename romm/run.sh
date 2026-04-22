#!/bin/sh
set -e

export ROMM_AUTH_SECRET_KEY=$(python3 -c "import json; d=json.load(open('/data/options.json')); print(d['romm_auth_secret_key'])")
export DB_PASSWD=$(python3 -c "import json; d=json.load(open('/data/options.json')); print(d['db_passwd'])")
export DB_HOST="core-mariadb"
export DB_PORT="3306"
export DB_NAME="romm"
export DB_USER="romm"
export ROMM_BASE_PATH="/share/romm"

mkdir -p /share/romm/library /share/romm/resources /share/romm/assets /share/romm/config /redis-data /config/romm
touch /share/romm/config/config.yml

exec /docker-entrypoint.sh /init