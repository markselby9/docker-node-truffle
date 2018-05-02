FROM node:9.11-alpine
MAINTAINER Mark Feng <markselbyfcy@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apk add -t .gyp
	&& apk add --no-cache git python g++ make \
    && npm install -g truffle \
    && apk del .gyp
