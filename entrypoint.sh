#!/bin/bash

while getopts h:p:u:x: option
do
 case "${option}"
    in
    h) MYHOST=${OPTARG};;
    p) MYPORT=${OPTARG};;
    u) MYUSER=${OPTARG};;
    x) MYPASS=${OPTARG};;
 esac
done

adduser -h /home/${MYUSER} -s /bin/bash ${MYUSER} ${MYUSER}
echo "$MYUSER:$MYPASS" | chpasswd
node app.js -p 3000 --sshhost ${MYHOST} --sshport ${MYPORT} --sshuser ${MYUSER}