FROM golang:1.13.5-alpine3.11

RUN apk --update --no-cache add openssh git