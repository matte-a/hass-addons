#!/bin/sh
set -e

export ROMM_AUTH_SECRET_KEY="supersecretkey123changeme"
export DB_HOST="core-mariadb"
export DB_PORT="3306"
export DB_NAME="romm"
export DB_USER="romm"
export DB_PASSWD="rommpassword"
export ROMM_DATA_DIR="/config/romm"
export ROMM_LIBRARY_DIR="/share/roms"

mkdir -p /romm/config /romm/resources /romm/assets /redis-data /config/romm /share/roms

exec /docker-entrypoint.sh /init