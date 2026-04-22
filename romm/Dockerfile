FROM ghcr.io/rommapp/romm:latest

RUN apt-get update && apt-get install -y jq && rm -rf /var/lib/apt/lists/*

ENTRYPOINT []
COPY run.sh /run.sh
RUN sed -i 's/\r//' /run.sh && chmod +x /run.sh
CMD ["/run.sh"]