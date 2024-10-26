#!/bin/bash

# Base directory for output
BASE_DIR="./"
# YAML file containing the sidebar structure
YAML_FILE="./_data/sidebar.yml"

# Function to create markdown pages for each package
create_file() {
  local path="$1"
  local title="$2"
  local components="$3"

  # Calculate the permalink based on the path structure
  local permalink="/${path#./custom-craft-software/}/"
  permalink=${permalink%/index.md}  # remove "index.md" from permalink

  # Ensure the directory exists
  mkdir -p "$(dirname "$path")"

  # Write content to the markdown file
  cat <<EOL > "$path"
---
title: $title
layout: default
permalink: $permalink
---

# $title

## Overview
A brief description of what this package is about, including key features and usage.

## Components
$components
EOL

  echo "Created file: $path with permalink $permalink"
}

# Ensure YAML file exists
if [[ ! -f "$YAML_FILE" ]]; then
  echo "YAML file not found: $YAML_FILE"
  exit 1
fi

# Declare an associative array to store the components for each package
declare -A package_content

# Parse the YAML file
while IFS= read -r line; do
  if [[ "$line" == *"title:"* ]]; then
    # Extract the current title
    current_title=$(echo "$line" | sed 's/.*title: //')
  elif [[ "$line" == *"path:"* ]]; then
    # Extract the path and sanitize any leading/trailing spaces
    item_path=$(echo "$line" | sed 's/.*path: //' | xargs)
    package_name=$(dirname "$item_path")

    # Add the component link to the corresponding package
    package_content["$package_name"]+=$'\n'"- [$current_title]($item_path)"
  fi
done < "$YAML_FILE"

# Now generate a page for each package
for package in "${!package_content[@]}"; do
  # Define the output file path and title
  page_path="$BASE_DIR/$package/index.md"
  package_title=$(echo "$package" | sed 's/-/ /g' | awk '{for (i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2)} 1')

  # Create the file with the components
  create_file "$page_path" "$package_title" "${package_content[$package]}"
done