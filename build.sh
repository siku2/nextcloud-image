#!/usr/bin/env bash
set -euo pipefail

NEXTCLOUD_TAG="22-apache"
IMAGE="ghcr.io/siku2/nextcloud:$NEXTCLOUD_TAG"

docker build \
    --build-arg NEXTCLOUD_TAG="$NEXTCLOUD_TAG" \
    --tag "$IMAGE" \
    .
