#!/usr/bin/env bash
# Links this repo's commands into ~/.claude/commands.
# Safe to re-run. Works from wherever the repo is cloned, macOS or Linux.
set -eu

REPO="$(cd "$(dirname "$0")" && pwd)"
DEST="$HOME/.claude/commands"

mkdir -p "$DEST"

linked=0
for src in "$REPO"/commands/*.md; do
  [ -e "$src" ] || continue
  name="$(basename "$src")"
  target="$DEST/$name"

  # If a real file is already there, keep it rather than destroying it.
  if [ -e "$target" ] && [ ! -L "$target" ]; then
    backup="$target.before-good-claude"
    mv "$target" "$backup"
    echo "  kept your existing $name as $(basename "$backup")"
  fi

  ln -sfn "$src" "$target"
  echo "  linked $name"
  linked=$((linked + 1))
done

echo
echo "Done. $linked command(s) linked into $DEST"
echo "Update them later with: git -C \"$REPO\" pull"
