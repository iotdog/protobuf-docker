# Usage

## 1. get docker image

build it locally

```
docker build -t protobuf-docker:1.0 .
```

or pull from docker hub

```
docker pull iotdog/protobuf-docker
```

## 2. run docker and enter bash

```
docker run -v /path/to/proto/folder:/root/protos -i -t --rm iotdog/protobuf-docker /bin/bash
```

if you are using windows to mount directories, please see this [tutorial](https://rominirani.com/docker-on-windows-mounting-host-directories-d96f3f056a2c).

## 3. change to proto folder

```
cd /root/protos
```

## 4. compile proto for different languages

### 4.1 compile proto for JS

```
protoc --js_out=import_style=commonjs,binary:. test.proto
```

see [more](https://github.com/google/protobuf/tree/master/js).

### 4.2 compile proto for c

```
protoc --c_out=. test.proto
```

### 4.3 compile proto for embeded c

this is base on [nanopb](https://github.com/nanopb/nanopb).

```
protoc --plugin=protoc-gen-nanopb=/root/nanopb-0.3.9-linux-x86/generator/protoc-gen-nanopb --nanopb_out=. test.proto
```

### 4.4 compile proto for golang

```
protoc --go_out=. test.proto
```
