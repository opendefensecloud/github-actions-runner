FROM ghcr.io/falcondev-oss/actions-runner:2.329.0
USER root
RUN apt-get update -qy \
    && apt-get install -y --no-install-recommends --fix-missing \
    build-essential shellcheck \
    && rm -rf /var/lib/apt/lists/*
USER runner
