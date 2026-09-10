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
.governance/manifest.yaml
.governance/policies/authority.md
.governance/policies/validation.md
"

for rel in $required_files; do
  [ -f "$ROOT/$rel" ] || fail "missing required APG core file: $rel"
  pass "exists: $rel"
done

grep -Eq 'spec_version:[[:space:]]*"1\.0"' "$ROOT/.governance/manifest.yaml"   || fail "manifest spec_version is not 1.0"
pass "manifest spec_version=1.0"

grep -q 'GOVERNANCE.md' "$ROOT/AGENTS.md"   || fail "AGENTS.md does not route to GOVERNANCE.md"
pass "AGENTS.md routes to governance"

grep -q '.governance/manifest.yaml' "$ROOT/AGENTS.md"   || fail "AGENTS.md does not route to .governance/manifest.yaml"
pass "AGENTS.md routes to manifest"

grep -q 'authority_policy:' "$ROOT/.governance/manifest.yaml"   || fail "manifest does not declare core authority policy"
pass "manifest declares authority policy"

grep -q 'validation_policy:' "$ROOT/.governance/manifest.yaml"   || fail "manifest does not declare core validation policy"
pass "manifest declares validation policy"

if grep -q 'project_sources:' "$ROOT/.governance/manifest.yaml"; then
  pass "manifest supports project source resolution"
fi

if [ -f "$ROOT/VERSION" ]; then
  version="$(tr -d '\r\n' < "$ROOT/VERSION")"

  printf '%s\n' "$version" | grep -Eq '^[0-9]+\.[0-9]+\.[0-9]+$' \
    || fail "VERSION is not valid semantic version: $version"

  pass "VERSION=$version"

  manifest_release="$(awk '
    /^[[:space:]]*release:[[:space:]]*$/ { in_release=1; next }
    in_release && /^[^[:space:]]/ { in_release=0 }
    in_release && /^[[:space:]]*current:/ {
      sub(/^[[:space:]]*current:[[:space:]]*/, "")
      gsub(/"/, "")
      print
      exit
    }
  ' "$ROOT/.governance/manifest.yaml")"

  [ "$manifest_release" = "$version" ] \
    || fail "manifest release.current=$manifest_release does not match VERSION=$version"

  pass "manifest release.current matches VERSION=$version"
fi

if [ -d "$ROOT/docs" ]; then
  [ -f "$ROOT/docs/index.html" ] || fail "docs/index.html missing"
  pass "GitHub Pages entrypoint exists"

  [ -f "$ROOT/docs/CNAME" ] || fail "docs/CNAME missing"
  [ "$(tr -d '\r\n' < "$ROOT/docs/CNAME")" = "apg.opspro.ir" ]     || fail "docs/CNAME does not contain apg.opspro.ir"
  pass "custom domain configured"
fi

echo "PASS: APG core validation complete (manifest spec 1.0)"
