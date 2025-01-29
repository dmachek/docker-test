FROM alpine:latest

ARG NO_PROXY="localhost,127.0.0.1"
ENV NO_PROXY=$NO_PROXY

CMD ["sh", "-c", "echo 'NO_PROXY at runtime: ' $NO_PROXY && env"]
