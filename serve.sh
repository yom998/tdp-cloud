#!/bin/sh
#

export TDP_DEBUG=1

export CGO_ENABLED=0
export GO111MODULE=on

####################################################################

go mod tidy
go run main.go --listen 127.0.0.1:7800
