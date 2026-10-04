#!/usr/bin/env bash
# Copy Growing Clarity into a target project.
set -euo pipefail

usage() {
  cat <<'EOF'
Usage: ./scripts/install.sh <target-project-dir> [--docs]

Copies:
  skills/clean-english      -> <target>/.agents/skills/clean-english
  skills/interactive-html  -> <target>/.agents/skills/interactive-html

Also creates Cursor symlinks under <target>/.cursor/skills/ when possible.

Options:
  --docs   Also copy docs/english-writing-standards.md into <target>/docs/
  -h       Show this help
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" || $# -lt 1 ]]; then
  usage
  exit 0
fi

TARGET="$(cd "$1" && pwd)"
COPY_DOCS=0
if [[ "${2:-}" == "--docs" ]]; then
  COPY_DOCS=1
fi

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
AGENTS_DIR="$TARGET/.agents/skills"
CURSOR_DIR="$TARGET/.cursor/skills"

mkdir -p "$AGENTS_DIR"
mkdir -p "$CURSOR_DIR"

copy_skill() {
  local name="$1"
  local src="$ROOT/skills/$name"
  local dest="$AGENTS_DIR/$name"
  mkdir -p "$dest"
  # Overwrite skill files in place. Re-run after skill renames if leftovers remain.
  cp -a "$src/." "$dest/"
  ln -sfn "../../.agents/skills/$name" "$CURSOR_DIR/$name"
  echo "Installed $name -> $dest"
  echo "Cursor link -> $CURSOR_DIR/$name"
}

copy_skill clean-english
copy_skill interactive-html

if [[ "$COPY_DOCS" -eq 1 ]]; then
  mkdir -p "$TARGET/docs"
  cp "$ROOT/docs/english-writing-standards.md" "$TARGET/docs/english-writing-standards.md"
  echo "Copied writing standards -> $TARGET/docs/english-writing-standards.md"
fi

cat <<EOF

Next steps:
1. Point your project AGENTS.md at docs/english-writing-standards.md
2. Tell agents to use /clean-english and /interactive-html
3. Keep skills linked to the standards document; do not paste the full policy into skills
EOF
