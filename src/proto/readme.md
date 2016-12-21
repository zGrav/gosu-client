# GOSU ProtoBuf Definitions

## Compatibility

github.com/golang/protobuf - 1e35a3a79e6fc8eedefdbeb905eddf7455fa0f4b
google.golang.org/grpc - e3df691ebc183e3ec3bc062442e1503b3af17340

```
cd $GOPATH/src/github.com/golang/protobuf/protoc-gen-go
git checkout 1e35a3a79e6fc8eedefdbeb905eddf7455fa0f4b
go install

cd $GOPATH/src/google.golang.org/grpc
git checkout e3df691ebc183e3ec3bc062442e1503b3af17340
go install
```

To regenerate the golang definitions

```
$ protoc --go_out=./ *.proto
```

To regenerate the json definitions

```
$ pbjs message.proto -target=json > message.json
```

To regenerate the (android) java classes

```
$ protoc -I ./ *.proto '--javanano_out=ignore_services=true:<android app dir>/app/src/main/java/'
```

To regenerate the ObjectiveC classes

```
$ protoc --objc_out=./objc *.proto
```

To regenerate the CommonJS classes
```
$ pbjs message.proto -target=commonjs > message.js
$ pbjs profile.proto -target=commonjs > profile.js
```
