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
    alpine-sdk \
  && mkdir /app

ADD entrypoint.sh /app/
WORKDIR /app

RUN chmod +x /app/entrypoint.sh \
 && git clone https://github.com/krishnasrinivas/wetty.git /app \
 && npm install \
 && apk del git python2 python2-dev py-setuptools alpine-sdk

EXPOSE 3000

ENTRYPOINT [ "/app/entrypoint.sh" ]
