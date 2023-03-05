
all: proto

proto:
	rm -f *.swagger.json
	protoc *.proto -I . -I third_party -I $(GOPATH)/src/github.com/protocolbuffers/protobuf/src --go_out=. --go-grpc_out=. --grpc-gateway_out=logtostderr=true,allow_delete_body=true:. --openapiv2_out=logtostderr=true,allow_delete_body=true:.

update:
	go get -u ./...


