#!/bin/bash

COMMAND=$1
ARG=$2
DIR=$(dirname "$ARG")
REALDIR=$(realpath "$DIR")
NAME=$(basename "$ARG")

case "$COMMAND" in
  "check")
	docker run -v "$REALDIR:/usr/src/raise-sources" formal-aspects-docker_rsl rsltc "/usr/src/raise-sources/$NAME"
    ;;
  "compile")
	docker run -v "$REALDIR:/usr/src/raise-sources" formal-aspects-docker_rsl rsltc -m "/usr/src/raise-sources/$NAME"
    ;;
  "sml")
	docker run -v "$REALDIR:/usr/src/raise-sources" formal-aspects-docker_rsl /bin/bash -c "cd raise-sources && sml $NAME"
    ;;
  *)
    echo "You have failed to specify what to do correctly."
    exit 1
    ;;
esac

