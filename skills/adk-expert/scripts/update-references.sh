#!/bin/bash

# Ensure the references directory exists
mkdir -p "$(dirname "$0")/../references"

# Download the files
curl -sL https://raw.githubusercontent.com/google/adk-python/refs/heads/main/llms-full.txt -o "$(dirname "$0")/../references/llms-full.txt"
curl -sL https://raw.githubusercontent.com/google/adk-python/refs/heads/main/llms.txt -o "$(dirname "$0")/../references/llms.txt"
curl -sL https://raw.githubusercontent.com/google/adk-docs/main/docs/get-started/python.md -o "$(dirname "$0")/../references/get-started-python.md"

# Fix relative links in getting started guide
sed -i 's|/adk-docs/|https://raw.githubusercontent.com/google/adk-docs/main/docs/|g' "$(dirname "$0")/../references/get-started-python.md"

echo "References updated in references/"
