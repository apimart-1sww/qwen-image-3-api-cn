#!/usr/bin/env bash
# Qwen-Image 3.0 — submit a task and poll it
set -eu
export APIMART_API_KEY="${APIMART_API_KEY:?set APIMART_API_KEY first}"
curl --request POST --url https://api.apimart.ai/v1/images/generations \
  --header "Authorization: Bearer $APIMART_API_KEY" \
  --header 'Content-Type: application/json' \
  --data '{"model":"qwen-image-3.0","prompt":"a cozy reading nook by a rainy window","n":1}'
