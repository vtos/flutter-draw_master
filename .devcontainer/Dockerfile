# [Choice] Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT=ubuntu-20.04
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# Set a non-root user.

ARG USER=vscode 

USER ${USER}
WORKDIR /home/${USER}

# Install Flutter.
RUN git clone https://github.com/flutter/flutter.git /home/${USER}/flutter

# Set flutter environment path
ENV PATH="/home/${USER}/flutter/bin:/home/${USER}/flutter/bin/cache/dart-sdk/bin:${PATH}"
