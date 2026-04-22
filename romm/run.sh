#!/bin/sh
set -e

export ROMM_AUTH_SECRET_KEY=$(grep -o '"romm_auth_secret_key":"[^"]*"' /data/options.json | cut -d'"' -f4)
export DATABASE_URL=$(grep -o '"database_url":"[^"]*"' /data/options.json | cut -d'"' -f4)
export ROMM_DATA_DIR="/config"
export ROMM_ROMS_DIR="/share/roms"

exec python3 /app/main.py