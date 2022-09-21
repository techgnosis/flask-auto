#! /usr/bin/env bash

set -euo pipefail

export OTEL_TRACES_EXPORTER=console
export OTEL_METRICS_EXPORTER=console

opentelemetry-instrument python3 server.py