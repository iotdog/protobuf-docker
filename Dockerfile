FROM centos:7
# install dependencies
RUN yum install gcc-c++ git cmake make autoconf automake libtool curl unzip -y

# install protobuf
RUN cd ~
RUN git clone https://github.com/google/protobuf.git
RUN cd protobuf
RUN ./autogen.sh
RUN ./configure && make && make install
RUN ldconfig

# install protobuf-c
# https://github.com/protobuf-c/protobuf-c
RUN cd ~
RUN git clone https://github.com/protobuf-c/protobuf-c.git
RUN cd protobuf-c
RUN ./autogen.sh
RUN export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
RUN ./configure && make && make install
