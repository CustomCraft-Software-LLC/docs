#!/bin/bash

# Base directory for output
BASE_DIR="./custom-craft-software/"
# YAML file containing the structure
YAML_FILE="./_data/sidebar.yml"

# Function to create a markdown file with given parameters
create_file() {
  local path="$1"
  local title="$2"
  local content="$3"

  # Create necessary directories
  mkdir -p "$(dirname "$path")"

  # Write content to the markdown file
  cat <<EOL > "$path"
---
title: $title
layout: default
---

# $title

$content

EOL

  echo "Created file: $path"
}

# Check if YAML file exists
if [[ ! -f "$YAML_FILE" ]]; then
  echo "YAML file not found: $YAML_FILE"
  exit 1
fi

# Declare an associative array to store content for each package
declare -A package_content

# Read the YAML file line by line
while IFS= read -r line; do
  # Match lines that contain "title:"
  if [[ "$line" == *"title:"* ]]; then
    current_title=$(echo "$line" | sed 's/.*title: //')
  # Match lines that contain "path:"
  elif [[ "$line" == *"path:"* ]]; then
    item_path=$(echo "$line" | sed 's/.*path: //')
    package_name=$(dirname "$item_path")
    # Initialize content for the package if not already done
    package_content["$package_name"]+="- [$current_title]($item_path)\n"
  fi
done < "$YAML_FILE"

# Now generate a page per package
for package in "${!package_content[@]}"; do
  page_path="$BASE_DIR/$package/index.md"
  package_title=$(echo "$package" | sed 's/-/ /g' | awk '{for (i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2)} 1')
  
  # Create the file with links to each component/utility
  create_file "$page_path" "$package_title" "${package_content[$package]}"
done