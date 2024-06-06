FROM python:3.12.3-bookworm
WORKDIR /app

# Create a non-root user and use it
RUN useradd -ms /bin/bash vscode
USER vscode

# Add new users path /home/vscode/.local/bin to the PATH
ENV PATH="/home/vscode/.local/bin:${PATH}"

# # Add installed libraries to PYTHONPATH
# ENV PYTHONPATH="/home/vscode/.local/lib/python3.9/site-packages:${PYTHONPATH}"

LABEL maintainer="Bazuara"
