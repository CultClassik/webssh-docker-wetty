FROM node:alpine
LABEL "maintainer"="Chris Diehl <cultclassik@gmail.com>"

RUN apk update --no-cache && apk add \
    bash \
    git \
    python2 \
    python2-dev \
    py-setuptools \
    alpine-sdk

RUN git clone https://github.com/krishnasrinivas/wetty.git /app \
 && cd /app \
 && npm install \
 && apk del git python2 python2-dev py-setuptools alpine-sdk

ADD entrypoint.sh /app/

WORKDIR /app

EXPOSE 3000

ENTRYPOINT [ "/app/entrypoint.sh", "-h", "myhost", "-p", "myport", "-u", "myuser", "-x", "mypass" ]
