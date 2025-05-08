# Based on official Next.js dev container with Node
FROM mcr.microsoft.com/devcontainers/javascript-node:20

# Instala PostgreSQL client
RUN apt-get update && apt-get install -y \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Desactiva la posibilidad de comietar sin identificarte
RUN git config --global user.useConfigOnly true
