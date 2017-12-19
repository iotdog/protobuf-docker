# Usage

* get docker image

build it locally

```
docker build -t protobuf-docker:1.0 .
```

or pull from docker hub

```
docker pull iotdog/protobuf-docker
```

* run docker and enter bash

```
docker run -v /path/to/proto/folder:/root/protos -i -t --rm iotdog/protobuf-docker /bin/sh
```

* change to proto folder

```
cd /root/protos
```

* compile proto for JS

```
protoc --js_out=import_style=commonjs,binary:. test.proto
```

* compile proto for c

```
protoc --c_out=. test.proto
```

* compile proto for embeded c

```
protoc --plugin=protoc-gen-nanopb=/root/nanopb-0.3.9-linux-x86/generator/protoc-gen-nanopb --nanopb_out=. test.proto
```
