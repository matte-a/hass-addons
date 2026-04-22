FROM ghcr.io/rommapp/romm:latest

ENTRYPOINT []
COPY run.sh /run.sh
RUN tr -d '\r' < /run.sh > /run.sh.clean && mv /run.sh.clean /run.sh && chmod +x /run.sh
CMD ["/run.sh"]