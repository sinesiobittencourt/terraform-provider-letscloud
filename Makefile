PKG_NAME=letscloud
SITE=sinesio.com
VERSION=3.0.0
DISTRO=linux_amd64

#Só para facilitar a minha vida :)  Use >>> make .PHONY

default: build

build:
	GO111MODULE=on CGO_ENABLED=0 GOOS=linux go build -o terraform-provider-${PKG_NAME} -a -ldflags '-extldflags "-static"'

install:
	GO111MODULE=on go install

mkdir:
	mkdir -p ~/.terraform.d/plugins/${SITE}/${PKG_NAME}/${PKG_NAME}/${VERSION}/${DISTRO}

copy:
	cp terraform-provider-${PKG_NAME}  ~/.terraform.d/plugins/${SITE}/${PKG_NAME}/${PKG_NAME}/${VERSION}/${DISTRO}

init:
	terraform init

apply: init
	terraform apply

.PHONY: install build mkdir copy init