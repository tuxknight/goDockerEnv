FROM golang:1.6
MAINTAINER Grissom

RUN mkdir -p /go/src/app && mkdir -p /go/src/github.com/chanxuehong/wechat
WORKDIR /go/src/app

RUN git clone https://github.com/chanxuehong/wechat.git /go/src/github.com/chanxuehong/wechat && cd /go/src/github.com/chanxuehong/wechat && git checkout aba45b1027da496f4e7d08b171547cce3afe81f1
RUN go get github.com/labstack/echo && go get github.com/go-sql-driver/mysql && go get gopkg.in/yaml.v2

RUN go install
