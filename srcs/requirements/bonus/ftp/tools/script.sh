#!/bin/bash

adduser $FTP_USER << eof
$FTP_PASSWD
$FTP_PASSWD




Y
eof

mkdir ftp
echo $FTP_USER > /etc/vsftpd.chroot_list

service vsftpd stop

exec "$@"