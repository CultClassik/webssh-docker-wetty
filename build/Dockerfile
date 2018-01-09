FROM node:alpine
LABEL "maintainer"="Chris Diehl <cultclassik@gmail.com>"

#ENV MY_HOST = "myhost.mydns.org"
#ENV MY_PORT = "8022"

RUN apk update --no-cache && apk add \
    bash \
    git \
    python2 \
    python2-dev \
    py-setuptools \
    alpine-sdk

RUN chmod +x /app/entrypoint.sh \
 && git clone https://github.com/krishnasrinivas/wetty.git /app \
 && cd /app
 && npm install \
 && apk del git python2 python2-dev py-setuptools alpine-sdk

ADD entrypoint.sh /app/

EXPOSE 3000

ENTRYPOINT [ "/app/entrypoint.sh" ]
