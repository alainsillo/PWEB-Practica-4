#!/usr/bin/env bash

# Migration script to copy content to programacion_web_final repository
# Usage: ./migrate_to_final.sh <path_to_target_repo>

set -e

TARGET_REPO="$1"

if [ -z "$TARGET_REPO" ]; then
    echo "Usage: $0 <path_to_target_repo>"
    echo "Example: $0 /path/to/programacion_web_final"
    exit 1
fi

if [ ! -d "$TARGET_REPO/.git" ]; then
    echo "Error: $TARGET_REPO is not a git repository"
    exit 1
fi

echo "Migrating content from PWEB-Practica-4 to programacion_web_final..."

# Create subdirectory in target repo
DEST_DIR="$TARGET_REPO/practica4-galeria"
mkdir -p "$DEST_DIR"

# Copy all files
echo "Copying files..."
cp index.html "$DEST_DIR/"
for img in image_*.*; do
    [ -f "$img" ] && cp "$img" "$DEST_DIR/"
done

echo "Files copied to $DEST_DIR"
echo ""
echo "Next steps:"
echo "1. cd $TARGET_REPO"
echo "2. git add practica4-galeria/"
echo "3. git commit -m 'Add Practica 4: Galería de Ariana Grande'"
echo "4. git push origin main"
echo ""
echo "Migration preparation complete!"
