FROM node:alpine
LABEL "maintainer"="Chris Diehl <cultclassik@gmail.com>"

ENV MY_HOST = "myhost.mydns.org"
ENV MY_PORT = "8022"

RUN apk update --no-cache && apk add \
    bash \
    git \
    python2 \
    python2-dev \
    py-setuptools \
    alpine-sdk \
  && mkdir /app

WORKDIR /app

RUN git clone https://github.com/krishnasrinivas/wetty.git /app \
 && npm install \
 && apk del git python2 python2-dev py-setuptools alpine-sdk \
 # move this to startup script so users can specify the user name and pass when runing the container
 && adduser -h /home/remoter -s /bin/bash remoter remoter \
 && echo 'remoter:R3m0ter!' | chpasswd

EXPOSE 3000

CMD [ "npm", "app.js", "-p", "3000", "--sshhost", "${MY_HOST}", "--sshport", "${MY_PORT}" ]
