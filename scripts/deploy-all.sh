#!/usr/bin/env bash
set -euo pipefail

ACTION="${1:-test}"

case "$ACTION" in
  test|switch)
    ;;
  *)
    echo "Gebruik: $0 [test|switch]"
    exit 1
    ;;
esac

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DEVICES_FILE="$SCRIPT_DIR/devices.conf"

while IFS='=' read -r HOST_NAME IP_ADDRESS; do
  if [ -z "$HOST_NAME" ] || [[ "$HOST_NAME" == \#* ]]; then
    continue
  fi

  echo
  echo "=== Deployment naar $HOST_NAME ($IP_ADDRESS) ==="
  "$SCRIPT_DIR/deploy.sh" "$HOST_NAME" "$ACTION"
done < "$DEVICES_FILE"

echo
echo "Alle deployments zijn voltooid."
