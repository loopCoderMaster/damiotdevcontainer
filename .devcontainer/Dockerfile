# Image di base
FROM mcr.microsoft.com/devcontainers/base:ubuntu-${templateOption:imageVariant}

# Installazione dei pacchetti di base
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        mongodb-clients

# Pulizia cache
RUN apt-get clean -y && rm -rf /var/lib/apt/lists/*