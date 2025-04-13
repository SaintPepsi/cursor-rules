#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
RULES_DIR="$(dirname "$SCRIPT_DIR")/rules"

# Check if .cursor/rules directory exists in the current project
if [ ! -d ".cursor/rules" ]; then
    echo "Error: .cursor/rules directory not found in the current project"
    exit 1
fi

# Copy all .mdc files from .cursor/rules to the rules repository
echo "Exporting rules from current project to repository..."
cp .cursor/rules/*.mdc "$RULES_DIR/"

# Add and commit the changes
cd "$(dirname "$SCRIPT_DIR")"
git add rules/
git commit -m "Update rules from project export"

echo "Rules exported successfully!" 