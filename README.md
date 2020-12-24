cellaserv4-protobuf
===================

[cellaserv4](https://github.com/evolutek/cellaserv4) source and generated
protobuf files.

Use this repository as a submodule in other repos.

Dependencies:

* protobuf-compiler
* protoc-gen-go

How to get protoc-gen-go?
-------------------------

Run:

    $ go get github.com/golang/protobuf/{proto,protoc-gen-go}

Then add `$GOPATH/bin` to your `$PATH`

For more informations, see:
[goprotobuf's README](https://github.com/golang/protobuf)

Updating protobuf generated files
---------------------------------

Run:

    $ make
