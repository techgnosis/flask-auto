The Python auto-instrumentation is a two option monkeypatch. You can either use `opentelemetry-instrument` (and install that first) and configure it via envvars then run it like:
`opentelemetry-instrument <options> <pythonCode.py>`

Or you can import the relevant auto-instrumentation libraries into your code which is very similar to both the Ruby/JS auto-instrumentation.

### Dependencies
requirements.txt reflects the installation of:
* flask
* opentelemetry-distro
* opentelemetry-instrumentation-flask
* opentelemetry-exporter-otlp

### Other examples
* https://raw.githubusercontent.com/open-telemetry/opentelemetry-python/main/docs/getting_started/flask_example.py
