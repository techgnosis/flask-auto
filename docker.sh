#! /usr/bin/env bash

set -euo pipefail

docker run -it --rm -v $(pwd):/flask -w "/flask" -p 8081:8081 python:3.9.14 bash