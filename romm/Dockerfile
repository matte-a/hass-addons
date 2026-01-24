FROM ghcr.io/rommapp/romm:latest

# Remove the default ROMM ENTRYPOINT to avoid /init crash
ENTRYPOINT []

# Copy our wrapper script into the image
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Set our wrapper script as the command
CMD ["/run.sh"]
