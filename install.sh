#!/usr/bin/env bash

if [[ "$EUID" -ne 0 ]]; then
  exit 1
fi

if [ ! -d "src/" ]; then
  exit 1
fi

cp -r src/* /usr/local/bin/
