FROM alpine:latest

ARG NO_PROXY="artifactory.dhl.com,localhost,127.0.0.1"
ENV NO_PROXY=$NO_PROXY

RUN echo "Fetching artifacts from Artifactory..." && \
    echo "Using NO_PROXY=$NO_PROXY" && \
    unset NO_PROXY

CMD ["sh", "-c", "echo 'NO_PROXY at runtime: ' $NO_PROXY && env"]
