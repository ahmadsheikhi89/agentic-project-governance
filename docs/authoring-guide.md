# Authoring Guide

Good APG governance should be:

- scoped;
- direct;
- explicit about authority;
- explicit about authoritative sources;
- explicit about validation;
- testable where possible;
- independent of chat history;
- free of duplicated policy.

## Do not duplicate project facts

If architecture, versioning, runbooks, or specifications already exist, reference those sources from the manifest.

Do not copy them into APG merely to satisfy a folder convention.

## Keep adapters thin

Tool adapters should point to canonical APG governance.

Do not maintain independent policy copies in Codex, Claude, Gemini, or Copilot adapter files.

## Load relevant context only

Do not make every task load the full project knowledge base or the APG framework specification.
