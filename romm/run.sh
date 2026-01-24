#!/usr/bin/with-contenv bash
set -e

# Export HA add-on options as environment variables
export ROMM_AUTH_SECRET_KEY="${OPTIONS_romm_auth_secret_key}"
export DATABASE_URL="${OPTIONS_database_url}"

# Ensure ROMM uses persistent data directory
export ROMM_DATA_DIR="/config"
export ROMM_ROMS_DIR="/share/roms"

# Start ROMM
exec /entrypoint.sh
