IN = cellaserv.proto
OUT = cellaserv.pb.go \
      cellaserv_pb2.py \
      cpp/cellaserv.pb.cc cpp/cellaserv.pb.h

all: $(OUT)

cpp:
	mkdir cpp

$(OUT): $(IN) cpp
	# Output to cpp directory otherwise cgo complains about .cc files in
	# the same directory as .go files
	protoc --experimental_allow_proto3_optional --cpp_out=cpp --python_out=. --go_out=. --go_opt=paths=source_relative $(IN)
