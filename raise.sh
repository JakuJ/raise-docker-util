#!/bin/bash

CMDS=${@:1:$#-1}
ARG=${@: -1}
DIR=$(dirname "$ARG")
REALDIR=$(realpath "$DIR")
NAME=$(basename "$ARG")

docker run --rm -v "$REALDIR:/usr/src" formal-aspects-docker_rsl $CMDS "./$NAME"
