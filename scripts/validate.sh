#!/bin/bash
set -e
OUTPUT_FILE="output/output.json"

if [ ! -f "$OUTPUT_FILE" ]; then
  echo "ERROR: output.json not found"
  exit 1
fi

STATUS=$(python3 -c "import json; d=json.load(open('$OUTPUT_FILE')); print(d['status'])")

if [ "$STATUS" != "success" ]; then
  echo "ERROR: status is '$STATUS', expected 'success'"
  exit 1
fi

echo "Validation passed. Status: $STATUS"