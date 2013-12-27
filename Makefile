IN = cellaserv.proto
OUT = cellaserv.pb.go cellaserv_pb2.py cpp/cellaserv.pb.cc cpp/cellaserv.pb.h

all: $(OUT)

$(OUT): $(IN)
	@mkdir -p cpp
	protoc --cpp_out=cpp --python_out=. --go_out=. $(IN)
