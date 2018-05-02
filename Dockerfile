FROM node:9.11-alpine
MAINTAINER Mark Feng <markselbyfcy@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh python g++ make \
    && npm install -g truffle
