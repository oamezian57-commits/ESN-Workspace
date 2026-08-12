#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
  echo "Gebruik: $0 <flake-hostnaam> [test|switch]"
  exit 1
fi

HOST_NAME="$1"
ACTION="${2:-test}"

case "$ACTION" in
  test|switch)
    ;;
  *)
    echo "Actie moet 'test' of 'switch' zijn."
    exit 1
    ;;
esac

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
DEVICES_FILE="$SCRIPT_DIR/devices.conf"

if [ ! -f "$DEVICES_FILE" ]; then
  echo "Fout: $DEVICES_FILE bestaat niet."
  exit 1
fi

IP_ADDRESS="$(sed -n "s/^${HOST_NAME}=//p" "$DEVICES_FILE" | head -n 1)"

if [ -z "$IP_ADDRESS" ]; then
  echo "Fout: '$HOST_NAME' staat niet in devices.conf."
  exit 1
fi

cd "$PROJECT_DIR"

echo "Flake controleren..."
nix flake check

echo "$HOST_NAME uitrollen naar admin@$IP_ADDRESS met actie: $ACTION"

nixos-rebuild "$ACTION" \
  --flake ".#$HOST_NAME" \
  --target-host "admin@$IP_ADDRESS" \
  --use-remote-sudo \
  --ask-sudo-password
