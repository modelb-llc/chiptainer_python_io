#!/bin/sh

CONTAINER_IMAGE=${CONTAINER_IMAGE:-modelb/chiptainer_python_io}

docker build --no-cache=true -t "${CONTAINER_IMAGE}" .
