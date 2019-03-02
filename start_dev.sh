#!/bin/bash

dir=$(cd `dirname $0`; pwd)

docker run --name luajit -it --rm \
-v $dir:/opt/dev \
-w /opt/dev \
--cap-add=SYS_PTRACE --security-opt seccomp=unconfined \
-e ASAN_OPTIONS=detect_leaks=0 \
lua-game-dev:latest
