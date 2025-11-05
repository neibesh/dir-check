#!/bin/sh

DIR_TO_CHECK="${1:-/mnt/data}"
TIMEOUT="${2:-60}"
INTERVAL=2  # check every 2 seconds

echo "Waiting for directory to appear: $DIR_TO_CHECK (timeout: ${TIMEOUT}s)"

elapsed=0
while [ "$elapsed" -lt "$TIMEOUT" ]; do
    if [ -d "$DIR_TO_CHECK" ]; then
        echo "✅ Directory found: $DIR_TO_CHECK"
        exit 0
    fi
    sleep "$INTERVAL"
    elapsed=$((elapsed + INTERVAL))
done

echo "❌ Timeout reached (${TIMEOUT}s) — directory not found: $DIR_TO_CHECK"
exit 1