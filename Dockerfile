FROM centos:7

# install utils and dependencies
RUN yum install gcc-c++ git cmake make autoconf automake libtool curl unzip wget python-setuptools -y

# install protobuf
RUN cd ~ && git clone https://github.com/google/protobuf.git
RUN cd ~/protobuf && ./autogen.sh && ./configure && make && make install
RUN ldconfig

# install protobuf-c
# https://github.com/protobuf-c/protobuf-c
RUN cd ~ && git clone https://github.com/protobuf-c/protobuf-c.git
RUN export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig && cd ~/protobuf-c && ./autogen.sh && ./configure && make && make install

# install protobuf-python
RUN cd ~/protobuf/python && python setup.py build && python setup.py install

# install nanopb
RUN cd ~ && wget https://jpa.kapsi.fi/nanopb/download/nanopb-0.3.9-linux-x86.tar.gz && tar -xzvf nanopb-0.3.9-linux-x86.tar.gz
