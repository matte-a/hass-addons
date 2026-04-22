#!/usr/bin/with-contenv bash
set -e

export ROMM_AUTH_SECRET_KEY="${OPTIONS_romm_auth_secret_key}"
export DATABASE_URL="${OPTIONS_database_url}"
export ROMM_DATA_DIR="/config"
export ROMM_ROMS_DIR="/share/roms"

exec /entrypoint.sh
