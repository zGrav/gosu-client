SOURCE := $(shell find . -name '*.proto')

.PHONY = $(PROJECT) docker-build docker-push docker-pull

js: $(SOURCE)
	pbjs gosu.proto --target=commonjs --export=proto > gosu.js

objc: $(SOURCE)
	protoc -I ./ *.proto --objc_out=./objectivec --objcgrpc_out=./objectivec

go: $(SOURCE)
	protoc -I ./ *.proto --go_out=plugins=grpc:./

all: js objc go
	echo 'Rebuilding all output files'
