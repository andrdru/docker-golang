FROM golang:1.15-alpine

RUN apk --update --no-cache add bash openssh sshpass gettext git &&\
    GO111MODULE=on go get github.com/andrdru/migrate@v1.0.3
