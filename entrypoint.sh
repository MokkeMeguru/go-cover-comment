#!/usr/bin/env bash
set -euo pipefail

exec 1> >(
  while read -r l; do echo "[$(date +"%Y-%m-%d %H:%M:%S")] $l"; done \
    | tee -a $LOG_OUT
)

echo "Welcome to Go Coverage Commenter"

