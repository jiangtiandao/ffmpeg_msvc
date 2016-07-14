#!/bin/bash

cd FFmpeg
echo ":: clean ffmpeg"
make distclean
echo ":: configure ffmpeg"
./configure --toolchain=msvc --disable-asm --disable-mmx --disable-mmxext --disable-dxva2 --enable-debug --prefix=../build --extra-cflags="-MDd" --extra-ldflags="/NODEFAULTLIB:libcmt"
echo ":: complile ffmpeg"
make
echo ":: install ffmpeg"
make install