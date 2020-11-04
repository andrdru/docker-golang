FROM golang:1.15-alpine

RUN apk --update --no-cache add bash openssh sshpass gettext git
