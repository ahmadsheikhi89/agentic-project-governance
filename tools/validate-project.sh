#!/usr/bin/env sh
set -eu

ROOT=${1:-.}

fail() {
  echo "FAIL: $*" >&2
  exit 1
}

pass() {
  echo "PASS: $*"
}

required_files="
AGENTS.md
GOVERNANCE.md
PROJECT.md
.governance/manifest.yaml
"

for rel in $required_files; do
  [ -f "$ROOT/$rel" ] || fail "missing required file: $rel"
  pass "exists: $rel"
done

grep -Eq 'spec_version:[[:space:]]*"1\.0"' "$ROOT/.governance/manifest.yaml" \
  || fail "manifest spec_version is not 1.0"
pass "manifest spec_version=1.0"

grep -q 'GOVERNANCE.md' "$ROOT/AGENTS.md" \
  || fail "AGENTS.md does not reference GOVERNANCE.md"
pass "AGENTS.md routes to governance"

grep -q 'PROJECT.md' "$ROOT/AGENTS.md" \
  || fail "AGENTS.md does not reference PROJECT.md"
pass "AGENTS.md routes to project definition"

if [ -f "$ROOT/VERSION" ]; then
  [ "$(tr -d '\r\n' < "$ROOT/VERSION")" = "1.0.0" ] \
    || fail "VERSION is not 1.0.0"
  pass "VERSION=1.0.0"
fi

if [ -d "$ROOT/docs" ]; then
  [ -f "$ROOT/docs/index.html" ] || fail "docs/index.html missing"
  pass "GitHub Pages entrypoint exists"

  [ -f "$ROOT/docs/CNAME" ] || fail "docs/CNAME missing"
  [ "$(tr -d '\r\n' < "$ROOT/docs/CNAME")" = "apg.opspro.ir" ] \
    || fail "docs/CNAME does not contain apg.opspro.ir"
  pass "custom domain configured"
fi

echo "PASS: APG structural validation complete"
