#!/bin/bash

TARGET_DIR="${1:-.}"  

echo "Organizing files in: $TARGET_DIR"

mkdir -p "$TARGET_DIR"/{Images,Text,Scripts,Others}

for file in "$TARGET_DIR"/*; do
  if [ -f "$file" ]; then
    case "$file" in
      *.jpg|*.png) mv "$file" "$TARGET_DIR"/Images/ ;;
      *.txt) mv "$file" "$TARGET_DIR"/Text/ ;;
      *.sh) mv "$file" "$TARGET_DIR"/Scripts/ ;;
      *) mv "$file" "$TARGET_DIR"/Others/ ;;
    esac
  fi
done

echo "Done!"
