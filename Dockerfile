FROM golang:alpine as build
WORKDIR /go/bin
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build
ENTRYPOINT ["/go/bin/docker-demo-2"]
EXPOSE 9000