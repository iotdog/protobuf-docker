FROM centos:7
# install dependencies
RUN yum install gcc-c++ git cmake make autoconf automake libtool curl unzip -y

# install protobuf
RUN cd ~ && git clone https://github.com/google/protobuf.git
RUN cd ~/protobuf && ./autogen.sh && ./configure && make && make install
RUN ldconfig

# install protobuf-c
# https://github.com/protobuf-c/protobuf-c
RUN cd ~ && git clone https://github.com/protobuf-c/protobuf-c.git
RUN export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig && cd ~/protobuf-c && ./autogen.sh && ./configure && make && make install
