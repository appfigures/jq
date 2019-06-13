#!/bin/bash

autoreconf -i
# ./configure --with-oniguruma=builtin ${EXTRA_CONF}
./configure
make distclean
#make LDFLAGS=-all-static

scripts/crosscompile arm-apple-darwin11 ${EXTRA_CONF}
