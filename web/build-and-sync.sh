#!/bin/bash
# Build frontend and sync to backend static directory
set -e
cd "$(dirname "$0")"
npm run build
npm run export
rsync -a --delete out/ ../packages/dbgpt-app/src/dbgpt_app/static/web/
echo "=== Build & sync complete ==="
