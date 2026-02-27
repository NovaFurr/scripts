#!/usr/bin/env bash
set -euo pipefail

cliphist list \
  | fuzzel --dmenu --prompt="clip> " \
  | cliphist decode \
  | wl-copy

