FROM debian:bullseye

RUN apt update && apt install vsftpd -y

COPY ./conf/vsftpd.conf /etc/vsftpd.conf
COPY ./tools/script.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh

ENTRYPOINT [ "./tmp/script.sh" ]

CMD [ "vsftpd" ]