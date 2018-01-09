FROM node:alpine
MAINTAINER Chris Diehl <cultclassik@gmail.com>

RUN apk update --no-cache && \
  apk add \
    vim \
    bash \
    git \
    python2 \
    python2-dev \
    py-setuptools \
    alpine-sdk

RUN git clone https://github.com/krishnasrinivas/wetty.git /app

WORKDIR /app

RUN npm install

RUN adduser -h /home/term -s /bin/bash term term
RUN echo 'term:term' | chpasswd

RUN apk del git python2 python2-dev py-setuptools alpine-sdk

EXPOSE 3000

CMD ["npm", "app.js", "-p", "3000", "--sshhost", "home.diehlabs.com", "--sshport", "8022"]
