#!/bin/bash

set -euo pipefail

API_KEY_FILE="$HOME/.config/reka/api_key"
API_ENDPOINT="https://api.reka.ai/v1/chat/completions"
MODEL="reka-flash-research"

# Acquire query (arguments or stdin)
if [ $# -eq 0 ]; then
  if [ ! -t 0 ]; then
    # Read piped / redirected input (supports multi-line)
    QUERY="$(cat)"
  else
    echo "Error: No query provided" >&2
    echo "Usage: reka-research.sh <your research query>" >&2
    echo "Examples:" >&2
    echo "  reka-research.sh Best practices for zero trust onboarding" >&2
    echo "  reka-research.sh Compare Postgres logical vs physical replication" >&2
    echo "  echo 'Summarize latest RAG evaluation techniques' | reka-research.sh" >&2
    exit 1
  fi
else
  QUERY="$*"
fi

if [ ! -f "$API_KEY_FILE" ]; then
  echo "Error: API key file not found at $API_KEY_FILE" >&2
  echo "Create it with:" >&2
  echo "  mkdir -p ~/.config/reka" >&2
  echo "  echo 'your-api-key-here' > ~/.config/reka/api_key" >&2
  echo "  chmod 600 ~/.config/reka/api_key" >&2
  exit 1
fi

API_KEY=$(tr -d '[:space:]' < "$API_KEY_FILE")
if [ -z "$API_KEY" ]; then
  echo "Error: API key file is empty ($API_KEY_FILE)" >&2
  exit 1
fi

# Prepare JSON payload safely (allow multi-line queries)
PAYLOAD=$(jq -n \
  --arg content "$QUERY" \
  --arg model "$MODEL" '{model:$model, messages:[{role:"user", content:$content}], research:{web_search:{max_uses:2}} }')

# Perform request
if [ -t 2 ] && [ -z "${REKA_NO_SPINNER:-}" ]; then
  SPINNER_CHARS='|/-\\'
  SPINNER_INDEX=0
  REKA_TMP_RESP=$(mktemp)
  (
    curl -s -w "\n%{http_code}" \
      -H "Authorization: Bearer $API_KEY" \
      -H "Content-Type: application/json" \
      -d "$PAYLOAD" \
      "$API_ENDPOINT" > "$REKA_TMP_RESP" || true
  ) &
  CURL_PID=$!
  while kill -0 "$CURL_PID" 2>/dev/null; do
    printf "\r[%c] Researching..." "${SPINNER_CHARS:SPINNER_INDEX:1}" >&2
    SPINNER_INDEX=$(( (SPINNER_INDEX + 1) % ${#SPINNER_CHARS} ))
    sleep 0.15
  done
  wait "$CURL_PID" || true
  # Clear spinner line
  printf "\r%*s\r" 30 "" >&2
  HTTP_RESPONSE=$(cat "$REKA_TMP_RESP")
  rm -f "$REKA_TMP_RESP"
else
  HTTP_RESPONSE=$(curl -s -w "\n%{http_code}" \
    -H "Authorization: Bearer $API_KEY" \
    -H "Content-Type: application/json" \
    -d "$PAYLOAD" \
    "$API_ENDPOINT" || true)
fi

BODY=$(printf "%s" "$HTTP_RESPONSE" | sed '$d')
STATUS=$(printf "%s" "$HTTP_RESPONSE" | tail -n1)

if [ "$STATUS" != "200" ]; then
  echo "Error: API request failed (status $STATUS)" >&2
  echo "Response body:" >&2
  echo "$BODY" >&2
  exit 1
fi

# Extract content trying multiple possible shapes
if command -v jq >/dev/null 2>&1; then
  OUTPUT=$(printf "%s" "$BODY" | jq -r '(.responses[0].message.content // .choices[0].message.content // .error // empty)')
  if [ -n "$OUTPUT" ]; then
    printf "%s\n" "$OUTPUT"
  else
    # Fallback full JSON if structure unknown
    printf "%s\n" "$BODY"
  fi
else
  echo "(Install jq for nicer output: brew install jq)" >&2
  printf "%s\n" "$BODY"
fi
