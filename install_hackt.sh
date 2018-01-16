#!/bin/bash

echo "[INFO] Use 'bash' instead of 'sh'"
rm /bin/sh
ln -s /bin/bash /bin/sh

echo "Install HACKT dependencies"
cd /hackt/deps
tar -xjf bison-2.3.tar.bz2
tar -xjf flex-2.5.35.tar.bz2

echo "Install bison-2.3"
cd ./bison-2.3
./configure --prefix=/usr/local
make
make install

echo "Install flex-2.5.34"
cd ../flex-2.5.35
./configure --prefix=/usr/local
make
make install

echo "Install HACKT"
cd /hackt/src
./bootstrap
sed -i.orig -e '/link_all_deplibs/s|=no|=yes|' config/libtool.m4
CC=/usr/bin/gcc-4.7 CXX=/usr/bin/g++-4.7 CFLAGS="-O2 -Wno-error" CXXFLAGS="-O2 -Wno-error" ./configure --disable-strict-dialect --disable-docs --prefix=/usr/local
make
make install

echo "Installation done"
