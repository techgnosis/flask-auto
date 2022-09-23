The Python auto-instrumentation is a two option monkeypatch. You can either use `opentelemetry-instrument` (and install that first) and configure it via envvars then run it like:
`opentelemetry-instrument <options> <pythonCode.py>`

Or you can import the relevant auto-instrumentation libraries into your code which is very similar to both the Ruby/JS auto-instrumentation.

This repo is using option #1 via `opentelemetry-instrument`. Technically #1 and #2 are the same, as #1 just downloads the libraries for you.

### Instructions
1. Run `docker.sh` to enter a Python container
1. Run `pip install -r requirements.txt` to get the Python container ready
1. Run `run.sh` to run server.py via `opentelemetry-instrument`
1. `curl localhost:8081`
1. You will see a span output to STDOUT. When you close the program with Ctrl+C it will output metrics to STDOUT

### Dependencies
requirements.txt reflects the installation of:
* flask
* opentelemetry-distro
* opentelemetry-instrumentation-flask
* opentelemetry-exporter-otlp

### Other examples
* https://raw.githubusercontent.com/open-telemetry/opentelemetry-python/main/docs/getting_started/flask_example.py
