FROM harbor.chinatopcredit.com/library/golang:1.6
MAINTAINER Grissom

RUN mkdir -p /go/src/app
WORKDIR /go/src/app

RUN go get github.com/labstack/echo && go get github.com/go-sql-driver/mysql && go get github.com/chanxuehong/wechat && go get gopkg.in/yaml.v2
