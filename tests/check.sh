
#!/usr/bin/env bash
set -e

if grep -q '^#' README.md; then
    echo "✅ README has a title"
else
    echo "❌ README.md needs a title line that starts with #"
    exit 1
fi
