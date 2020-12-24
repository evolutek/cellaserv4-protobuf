IN = cellaserv.proto
OUT = cellaserv.pb.go \
      cellaserv_pb2.py \
      cellaserv.pb.cc cellaserv.pb.h

all: $(OUT)

$(OUT): $(IN)
	protoc --experimental_allow_proto3_optional --cpp_out=. --python_out=. --go_out=. --go_opt=paths=source_relative $(IN)
