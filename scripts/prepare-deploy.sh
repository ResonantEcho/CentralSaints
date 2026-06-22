#!/bin/sh
set -eu

root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
dist="$root/dist"

rm -rf "$dist"
mkdir -p "$dist"

for page in "$root"/*.html; do
  cp "$page" "$dist/"
done

if [ -f "$root/.htaccess" ]; then
  cp "$root/.htaccess" "$dist/"
fi

for directory in assets docs forms images; do
  if [ -d "$root/$directory" ]; then
    cp -R "$root/$directory" "$dist/$directory"
  fi
done

if find "$dist" -type f -name '*.php' | grep -q .; then
  echo "Refusing to build: PHP file found in deployment package." >&2
  exit 1
fi

echo "Deployment package prepared at $dist"
