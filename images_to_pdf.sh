#!/usr/bin/env bash
set -Eeuo pipefail

# Usage:
#   ./to_pdf.sh [input_format] [input_path] [output_file.pdf]
# Example:
#   ./to_pdf.sh jpg "./scanned documents" ./scans.pdf

input_format="${1:-jpg}"
input_path="${2:-$PWD}"
output_pdf="${3:-scans.pdf}"

# Check if ImageMagick is available
if command -v magick >/dev/null 2>&1; then
  IM_CMD=(magick)
elif command -v convert >/dev/null 2>&1; then
  IM_CMD=(convert)
else
  echo "Error: ImageMagick not found (neither 'magick' nor 'convert')." >&2
  exit 1
fi

# Collect and sort files naturally; safe for spaces in filenames
mapfile -d '' files < <(
  find "$input_path" -maxdepth 1 -type f -iname "*.${input_format}" -print0 | sort -zV
)

if (( ${#files[@]} == 0 )); then
  echo "No *.${input_format} files found in: $input_path" >&2
  exit 1
fi

# If you want to enforce DPI in the resulting PDF (for raster images), keep -density 300; you can remove it if not needed.
"${IM_CMD[@]}" -density 300 "${files[@]}" "$output_pdf"

echo "Done: combined ${#files[@]} files into $output_pdf"

