#!/bin/bash
# Converts all JPG/JPEG/PNG images in the images/ directory to WebP.
# Usage: ./scripts/optimize-images.sh [path]   (default: images/)
set -e

IMAGES_DIR="${1:-images}"
QUALITY_PHOTO=82
QUALITY_SCREENSHOT=88

if ! command -v cwebp &>/dev/null; then
    echo "Error: cwebp not found. Install with: brew install webp"
    exit 1
fi

CONVERTED=0

while IFS= read -r img; do
    webp_path="${img%.*}.webp"

    if echo "$img" | tr '[:upper:]' '[:lower:]' | grep -q '\.png$'; then
        quality=$QUALITY_SCREENSHOT
    else
        quality=$QUALITY_PHOTO
    fi

    cwebp -q "$quality" -quiet "$img" -o "$webp_path"
    rm "$img"
    echo "Converted: $img → $webp_path"
    CONVERTED=$((CONVERTED + 1))
done < <(find "$IMAGES_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \))

echo ""
echo "$CONVERTED image(s) converted to WebP."
