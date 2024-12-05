#!/usr/bin/env bash

UID=$(id -u) GID=$(id -g) docker compose up -d
docker compose exec nvim fish
