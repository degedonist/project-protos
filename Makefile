PROTOS  := proto/*.proto
OUT_DIR := .

generate:
	protoc -I proto proto/user/*.proto \
	  --go_out=./proto --go_opt=paths=source_relative \
	  --go-grpc_out=./proto --go-grpc_opt=paths=source_relative \

clean:
	find . -name "*.pb.go" -delete