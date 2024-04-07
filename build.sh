#!/bin/sh

mkdir -p build
cd build
cmake .. -DBUILD_ATALK=ON -DCMAKE_PREFIX_PATH="${HOME}/usr/"
make