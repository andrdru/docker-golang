FROM golang:1.18-alpine3.16

RUN apk --update --no-cache  add bash openssh sshpass git make findutils protobuf=3.18.1-r2 protobuf-dev=3.18.1-r2 &&\
    go install github.com/a8m/envsubst/cmd/envsubst@latest &&\
    go install github.com/andrdru/migrate@v1.0.3 &&\
    wget -O- https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.46.2 &&\
    go install github.com/go-swagger/go-swagger/cmd/swagger@latest &&\
    go install github.com/mailru/easyjson/...@latest &&\
    go install github.com/golang/mock/mockgen@v1.6.0 &&\
    go install github.com/golang/protobuf/protoc-gen-go@latest && cp /go/bin/protoc-gen-go /usr/bin/ &&\
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest &&\
    wget -O /usr/bin/protoc-gen-grpc-web https://github.com/grpc/grpc-web/releases/download/1.2.1/protoc-gen-grpc-web-1.2.1-linux-x86_64  && chmod +x /usr/bin/protoc-gen-grpc-web &&\
    chmod 777 -R /go && mkdir -p /.cache && chmod 777 -R /.cache
