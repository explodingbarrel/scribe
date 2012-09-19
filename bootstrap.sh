#!/bin/sh

# To be safe include -I flag
autoreconf --force --verbose --install
./configure --config-cache --with-thriftpath=/opt/thrift --with-fb303path=/opt/fb303 --prefix=/opt/scribe $*
make 
make install
