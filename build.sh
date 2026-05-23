#\!/bin/bash
cd "$(dirname "$0")"
npx marp index.md --theme-set themes/*.css --allow-local-files -o index.html
