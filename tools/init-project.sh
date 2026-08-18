#!/usr/bin/env sh
set -eu

usage() {
  cat <<'EOF'
Usage:
  init-project.sh --target PATH [--profile generic|software|devops] [--apply]

Default behavior is dry-run. Files are created only with --apply.
Existing files are never overwritten.
EOF
}

TARGET=""
PROFILE="generic"
APPLY=0

while [ "$#" -gt 0 ]; do
  case "$1" in
    --target)
      TARGET=${2:-}
      shift 2
      ;;
    --profile)
      PROFILE=${2:-}
      shift 2
      ;;
    --apply)
      APPLY=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "ERROR: unknown argument: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

[ -n "$TARGET" ] || {
  echo "ERROR: --target is required" >&2
  exit 2
}

case "$PROFILE" in
  generic|software|devops) ;;
  *)
    echo "ERROR: unsupported profile: $PROFILE" >&2
    exit 2
    ;;
esac

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
REPO_ROOT=$(CDPATH= cd -- "$SCRIPT_DIR/.." && pwd)

create_file() {
  src=$1
  dst=$2

  if [ -e "$dst" ]; then
    echo "SKIP existing: $dst"
    return 0
  fi

  if [ "$APPLY" -eq 0 ]; then
    echo "PLAN create: $dst"
    return 0
  fi

  mkdir -p "$(dirname -- "$dst")"
  cp "$src" "$dst"
  echo "CREATED: $dst"
}

echo "APG bootstrap"
echo "Target: $TARGET"
echo "Profile: $PROFILE"
if [ "$APPLY" -eq 0 ]; then
  echo "Mode: dry-run"
else
  echo "Mode: apply"
fi

mkdir -p "$TARGET"

create_file "$REPO_ROOT/examples/minimal/AGENTS.md" "$TARGET/AGENTS.md"
create_file "$REPO_ROOT/examples/minimal/GOVERNANCE.md" "$TARGET/GOVERNANCE.md"
create_file "$REPO_ROOT/examples/minimal/PROJECT.md" "$TARGET/PROJECT.md"
create_file "$REPO_ROOT/examples/minimal/.governance/manifest.yaml" "$TARGET/.governance/manifest.yaml"
create_file "$REPO_ROOT/examples/minimal/.governance/policies/validation.md" "$TARGET/.governance/policies/validation.md"
create_file "$REPO_ROOT/examples/minimal/.governance/workflows/default.md" "$TARGET/.governance/workflows/default.md"

echo "DONE"
