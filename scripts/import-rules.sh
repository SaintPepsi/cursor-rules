#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
RULES_DIR="$(dirname "$SCRIPT_DIR")/rules"

# Check if .cursor directory exists in the current project
if [ ! -d ".cursor" ]; then
    echo "Creating .cursor directory..."
    mkdir -p .cursor
fi

# Check if .cursor/rules directory exists
if [ ! -d ".cursor/rules" ]; then
    echo "Creating .cursor/rules directory..."
    mkdir -p .cursor/rules
fi

# Copy all .mdc files from the rules repository to the current project
echo "Importing rules from repository to current project..."
cp "$RULES_DIR"/*.mdc .cursor/rules/

echo "Rules imported successfully!" 