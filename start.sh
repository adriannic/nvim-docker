#!/usr/bin/env bash

docker compose build --build-arg _UID="$(id -u)" --build-arg _GID="$(id -g)"
docker compose up -d
docker compose exec nvim fish
