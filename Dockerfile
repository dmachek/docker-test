FROM alpine:latest

ARG NO_PROXY="localhost,127.0.0.1"

CMD ["sh", "-c", "echo 'NO_PROXY at runtime: ' $NO_PROXY && env"]
