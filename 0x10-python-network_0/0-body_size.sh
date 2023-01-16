#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 url"
  exit 1
fi

url="$1"
curl -s -w '%{size_download}\n' -o /dev/null $url

