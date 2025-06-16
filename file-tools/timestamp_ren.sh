#!/bin/bash

read -p "Enter the date (YYYY-MM-DD): " target_date

read -p "Enter directory to search (press Enter for current): " dir
if [ -z "$dir" ]; then
  dir="."
fi

next_day=$(date -j -v+1d -f "%Y-%m-%d" "$target_date" "+%Y-%m-%d")

echo "Searching in: $dir"
echo "Looking for files modified on: $target_date"

matches=$(find "$dir" -type f -newermt "$target_date" ! -newermt "$next_day")

if [ -z "$matches" ]; then
  echo "No files found."
else
  echo "Files modified on $target_date:"
  echo "$matches"
fi
