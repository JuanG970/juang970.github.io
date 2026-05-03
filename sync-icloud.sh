#!/bin/bash

# Define directories
ICLOUD_DRAFTS="$HOME/Documents/Blog Drafts"
HUGO_POSTS="content/posts"

# Check if the drafts folder exists
if [ ! -d "$ICLOUD_DRAFTS" ]; then
  echo "Drafts directory doesn't exist. Creating it at: $ICLOUD_DRAFTS"
  mkdir -p "$ICLOUD_DRAFTS"
  echo "You can now save markdown files from your phone into '$ICLOUD_DRAFTS'"
  exit 0
fi

echo "Syncing drafts from iCloud ($ICLOUD_DRAFTS)..."

# Copy all markdown files (if any exist)
cp -n "$ICLOUD_DRAFTS"/*.md "$HUGO_POSTS/" 2>/dev/null

if [ $? -eq 0 ]; then
  echo "✅ Sync complete. You can now build with 'hugo server' or commit changes."
else
  echo "No new markdown files found in iCloud."
fi
