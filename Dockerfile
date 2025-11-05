FROM alpine:latest

WORKDIR /app

COPY check_dir.sh /app/check_dir.sh

RUN chmod +x /app/check_dir.sh

ENTRYPOINT ["/app/check_dir.sh"]