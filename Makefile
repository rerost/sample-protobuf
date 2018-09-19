.PHONY: protoc
protoc:
	protoc --proto_path=. --ruby_out=app/models/ protos/sample.proto
