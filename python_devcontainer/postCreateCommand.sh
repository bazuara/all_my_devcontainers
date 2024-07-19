#!/bin/bash

# Creates the .vscode directory and skips copy if folder exists, if it exists, show a message to the user
[ -d .vscode ] && echo ".vscode directory already exists, skipping creation" || mkdir .vscode
# Copies the settings.json file from the .devcontainer directory to the .vscode directory and skips the copy if file already exists in the .vscode directory, if it exists, show a message to the user

[ -f .vscode/settings.json ] && echo "vscode settings already exists, skipping, check the default settings located at '.devcontainer/vscode_settings.json' in case you are missing something"|| cp .devcontainer/vscode_settings.json .vscode/settings.json
#install python requirements for user
pip install -r requirements.txt