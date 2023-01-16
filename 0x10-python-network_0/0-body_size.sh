#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 url"
  exit 1
fi

url="$1"
size=$(curl -sI "$url" | grep "Content-Length" | awk '{print $2}')
echo "$size"

