#!/bin/bash
cd ~/.vim/cquery
./waf configure --llvm-config=/usr/lib/llvm/5/bin/llvm-config --prefix=~/.local  build
./waf install
