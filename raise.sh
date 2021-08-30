#!/bin/bash

CMDS=${@:1:$#-1}
ARG=${@: -1}
DIR=$(dirname "$ARG")
REALDIR=$(realpath "$DIR")
NAME=$(basename "$ARG")

docker run -v "$REALDIR:/usr/src/raise-sources" formal-aspects-docker_rsl $CMDS "/usr/src/raise-sources/$NAME"
