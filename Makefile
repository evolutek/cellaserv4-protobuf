IN = cellaserv.proto
OUT = cellaserv.pb.go cellaserv_pb2.py cellaserv.pb.cc

all: $(OUT)

$(OUT): $(IN)
	protoc --cpp_out=. --python_out=. --go_out=. $(IN)
