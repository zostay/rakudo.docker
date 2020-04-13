#!/bin/zsh

TAG="$1"
if [[ -n "$TAG" ]]; then
    ADDITIONAL_TAG="-tzostay/rakudo:$TAG"
fi

docker buildx build \
    --platform amd64,arm \
    -t "zostay/rakudo:latest" \
    "$ADDITIONAL_TAG" \
    "--push" \
    .
