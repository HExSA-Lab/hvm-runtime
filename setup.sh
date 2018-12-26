#!/bin/sh

git clone https://github.com/hexsa-lab/hvm-runtime.git
cd hvm-runtime
make setup
make
