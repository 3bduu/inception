FROM debian:bullseye

RUN apt-get update && \
    apt-get install -y redis-server && \
    rm -fr /var/lib/apt/lists/*

COPY ./tools/script.sh /script.sh
RUN chmod +x script.sh

EXPOSE 6379

ENTRYPOINT [ "./script.sh" ]

CMD [ "redis-server","--protected-mode","no" ]