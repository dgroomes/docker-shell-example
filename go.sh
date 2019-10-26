#!/usr/bin/env bash

set -e

COMMAND=${1:-run}

docker build --no-cache -t docker-shell-example:local .

if [[ "$COMMAND" = "run" ]]; then
  docker run --rm docker-shell-example:local
elif [[ "$COMMAND" = "attach" ]]; then
  docker run --rm -it --entrypoint sh docker-shell-example:local
fi