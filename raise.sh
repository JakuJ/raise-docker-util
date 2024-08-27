#!/bin/bash

CMDS=${@:1:$#-1}
ARG=${@: -1}
DIR=$(dirname "$ARG")
REALDIR=$(realpath "$DIR")
NAME=$(basename "$ARG")
IMAGE="ghcr.io/jakuj/raise-tools:main"

docker run --rm --platform linux/amd64 -v "$REALDIR:/usr/src" "$IMAGE" $CMDS "./$NAME"