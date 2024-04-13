#!/bin/zsh

# Define the base directory
base_dir="docs"

# Create the directory structure
mkdir -p "$base_dir/blog"
mkdir -p "$base_dir/platform"
mkdir -p "$base_dir/user-guide"
mkdir -p "$base_dir/api"
mkdir -p "$base_dir/about"

# Function to move or create files
move_or_create() {
    local subdir=$1
    local filename=$2
    local path="$base_dir/$subdir/$filename"

    # Check if the file exists at the base directory level
    if [[ -f "$base_dir/$filename" ]]; then
        # Move the file if it exists
        mv "$base_dir/$filename" "$path"
    else
        # Create the file if it does not exist
        touch "$path"
    fi
}

# Blog posts
move_or_create "blog" "2023-03-01-welcome.md"
move_or_create "blog" "2023-03-15-update.md"

# Modules
move_or_create "platform" "orion-defensive-ai.md"
move_or_create "platform" "orion-hunts.md"
move_or_create "platform" "orion-agents.md"
move_or_create "platform" "orion-cognitive-synthesis.md"
move_or_create "platform" "orion-network.md"
move_or_create "platform" "orion-threat-platform.md"

# User Guide
move_or_create "user-guide" "getting-started.md"
move_or_create "user-guide" "tutorials.md"
move_or_create "user-guide" "faq.md"

# API Documentation
move_or_create "api" "overview.md"
move_or_create "api" "reference.md"

# About
move_or_create "about" "platform.md"
move_or_create "about" "team.md"
move_or_create "about" "open-source.md"

echo "Directory structure and files set up complete."
