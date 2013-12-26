IN = cellaserv.proto
OUT = cellaserv.pb.go

all: $(OUT)

$(OUT): $(IN)
	protoc --go_out=. $(IN)
