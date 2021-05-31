#!/bin/bash
set -e

exec 1> >(
  while read -r l; do echo "[$(date +"%Y-%m-%d %H:%M:%S")] $l"; done \
    | tee -a $LOG_OUT
)

echo "Welcome to Go Coverage Commenter"


api_url="https://pokeapi.co/api/v2/pokemon/128"
echo $api_url

pokemon_name=$(curl "${api_url}" | jq ".name")
echo $pokemon_name

echo "::set-output name=pokemon_name::$pokemon_name"
