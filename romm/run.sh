#!/usr/bin/with-contenv bash
set -e

# Export environment variables for ROMM
export ROMM_AUTH_SECRET_KEY="${OPTIONS_romm_auth_secret_key}"
export DATABASE_URL="${OPTIONS_database_url}"

# Start ROMM
exec /entrypoint.sh
