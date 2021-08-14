FROM golang:1.16.6-alpine
ENV APP_ROOT=/go/src/app

LABEL maintainer="juuuuu0000"

RUN apk update && apk add git \
  && mkdir /go/src/app \
  && apk add tzdata git \
  && TZ=${TZ:-Asia/Tokyo} \
  && cp /usr/share/zoneinfo/$TZ /etc/localtime \
  && echo $TZ> /etc/timezone \
  && apk del tzdata \
  && rm -rf /var/cache/apk/*

WORKDIR $APP_ROOT
