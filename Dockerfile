FROM golang:1.15-alpine

RUN apk --update --no-cache add bash openssh sshpass gettext git &&\
    wget -O /usr/local/bin/migrate https://github.com/andrdru/migrate/releases/download/v1.0.0/migrate_linux_amd64 &&\
    chmod +x /usr/local/bin/migrate
