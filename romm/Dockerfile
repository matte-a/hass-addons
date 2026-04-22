FROM ghcr.io/rommapp/romm:latest

RUN apk add --no-cache jq

ENTRYPOINT []
COPY run.sh /run.sh
RUN sed -i 's/\r//' /run.sh && chmod +x /run.sh
CMD ["/run.sh"]