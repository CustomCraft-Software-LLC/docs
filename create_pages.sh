#!/bin/bash

# Base directory for output
BASE_DIR="./custom-craft-software/"
# YAML file containing the structure
YAML_FILE="./_data/sidebar.yml"

# Function to create a markdown file with given parameters
create_file() {
  local path="$1"
  local title="$2"
  local layout="$3"

  # Create necessary directories
  mkdir -p "$(dirname "$path")"

  # Write content to the markdown file
  cat <<EOL > "$path"
---
title: $title
layout: $layout
---

# $title

EOL

  echo "Created file: $path"
}

# Check if YAML file exists
if [[ ! -f "$YAML_FILE" ]]; then
  echo "YAML file not found: $YAML_FILE"
  exit 1
fi

# Read the YAML file line by line
while IFS= read -r line; do
  # Match lines that contain "title:"
  if [[ "$line" == *"title:"* ]]; then
    current_title=$(echo "$line" | sed 's/.*title: //')
  # Match lines that contain "path:"
  elif [[ "$line" == *"path:"* ]]; then
    item_path=$(echo "$line" | sed 's/.*path: //')
    full_path="$BASE_DIR$item_path/index.md"
    create_file "$full_path" "$current_title" "default"
  fi
done < "$YAML_FILE"