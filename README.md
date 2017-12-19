# Usage

* get docker image

1. build it locally

```
docker build -t protobuf-docker:1.0 .
```

2. pull from docker hub

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
protoc --js_out=import_style=commonjs,binary:. device.proto
```

* compile proto for c

```
protoc --c_out=. device.proto
```
