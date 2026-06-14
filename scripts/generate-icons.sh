#!/usr/bin/env bash
# Generates common favicon and PWA icons from a source image.
# Usage: ./scripts/generate-icons.sh public/fatetube-source.png

set -euo pipefail
SRC=${1:-public/fatetube-source.png}
OUT_DIR=public

if ! command -v convert >/dev/null 2>&1; then
  echo "ImageMagick 'convert' not found. Install it (apt install imagemagick) and try again." >&2
  exit 2
fi

if [ ! -f "$SRC" ]; then
  echo "Source image not found: $SRC" >&2
  echo "Place your Fatetube source PNG at $SRC and re-run this script." >&2
  exit 2
fi

mkdir -p "$OUT_DIR"

# Favicons
convert "$SRC" -resize 16x16 "$OUT_DIR/fatetube-favicon-16x16.png"
convert "$SRC" -resize 32x32 "$OUT_DIR/fatetube-favicon-32x32.png"
convert "$SRC" -resize 48x48 "$OUT_DIR/fatetube-favicon-48x48.png"

# Apple / Android
convert "$SRC" -resize 180x180 "$OUT_DIR/fatetube-apple-touch-icon.png"
convert "$SRC" -resize 192x192 "$OUT_DIR/fatetube-android-chrome-192x192.png"
convert "$SRC" -resize 512x512 "$OUT_DIR/fatetube-android-chrome-512x512.png"

# Embed preview (social) - use a 1200x630 ratio, center and pad
convert "$SRC" -resize 1200x1200 -gravity center -background none -extent 1200x630 "$OUT_DIR/fatetube-embed-preview.png"

# ICO (contains multiple sizes)
convert "$OUT_DIR/fatetube-favicon-48x48.png" "$OUT_DIR/fatetube-favicon-32x32.png" "$OUT_DIR/fatetube-favicon-16x16.png" "$OUT_DIR/fatetube-favicon.ico"

echo "Generated Fatetube icons in $OUT_DIR"
