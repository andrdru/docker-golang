FROM golang:1.15-alpine

RUN apk --update --no-cache add bash openssh sshpass gettext git &&\
    GO111MODULE=on go get github.com/andrdru/migrate@v1.0.3 &&\
    go get -d github.com/Meat-Hook/migrate && cd $GOPATH/src/github.com/Meat-Hook/migrate && go build -o /usr/bin/mhmigrate &&\
    curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.33.0
