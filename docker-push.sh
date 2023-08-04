#!/usr/bin/env bash

set -euo pipefail

echo "X:44BnqebjP@3Wu" | docker login -u "tonydja" --password-stdin
docker-compose -f docker-compose-build.yaml push