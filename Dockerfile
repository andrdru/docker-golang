FROM golang:1.16-alpine

RUN apk --update --no-cache add bash openssh sshpass git make protobuf &&\
    go get github.com/a8m/envsubst/cmd/envsubst &&\
    GO111MODULE=on go get github.com/andrdru/migrate@v1.0.3 &&\
    wget -O- https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.40.1 &&\
    go get github.com/go-swagger/go-swagger/cmd/swagger &&\
    go get -u github.com/mailru/easyjson/... &&\
    GO111MODULE=on go get github.com/golang/mock/mockgen@v1.5.0 &&\
    go get github.com/golang/protobuf/protoc-gen-go && cp /go/bin/protoc-gen-go /usr/bin/ &&\
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
