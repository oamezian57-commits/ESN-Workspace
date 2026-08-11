#!/usr/bin/env bash
set -e

cd /home/admin/Projects/ESN-Workspace

echo "==> Flake controleren..."
nix flake check

echo "==> ESN-User VM deployen..."
NIX_SSHOPTS="-p 2222" nixos-rebuild switch \
  --flake .#user-vm \
  --target-host admin@localhost \
  --sudo

echo "==> Actieve build controleren..."
ssh -i ~/.ssh/id_ed25519 -p 2222 admin@localhost \
  'readlink -f /run/current-system'

echo "==> Deployment geslaagd."
