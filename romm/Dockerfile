# Use the official ROMM image
FROM ghcr.io/rommapp/romm:latest

# Remove the default entrypoint to avoid /init crash
ENTRYPOINT []

# Copy our HA wrapper script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Default command: run our wrapper
CMD ["/run.sh"]
