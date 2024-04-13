#!/bin/zsh

# Define the directory structure and files
typeset -A files 

# Populate the array
files=(
  [index.md]="Home"
  [blog/2023-03-01-welcome.md]="Welcome to Our Blog"
  [blog/2023-03-15-update.md]="March Update"
  [about.md]="About"
  [platform/orion-defensive-ai.md]="Orion Constellation"
  [platform/orion-hunts.md]="Orion Hunts"
  [platform/orion-agents.md]="Orion Agents"
  [platform/orion-cognitive-synthesis.md]="Cognitive Synthesis"
  [platform/orion-network.md]="Orion Network"
  [platform/orion-threat-platform.md]="Communications & Threat Platform"
  [user-guide/getting-started.md]="Getting Started"
  [user-guide/tutorials.md]="Tutorials"
  [user-guide/faq.md]="FAQ"
  [api/overview.md]="API Overview"
  [api/reference.md]="API Reference"
  [about/platform.md]="The Platform"
  [about/team.md]="Our Team"
  [about/open-source.md]="Open Source"
)

# Echo the keys and values
for file in "${(@k)files}"; do
  heading="${files[$file]}"
  if [[ -f "docs/$file" ]]; then
    echo "# $heading\n\nUnder Construction\n" >> "docs/$file"
  else
    echo "File does not exist: docs/$file"
  fi
done

echo "Update complete."
