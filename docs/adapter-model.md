# Adapter Model

Adapters translate the canonical APG contract into a tool's native repository-instruction convention.

```text
Canonical APG Contract
├── Codex adapter
├── Claude adapter
├── Gemini adapter
└── Copilot adapter
```

Canonical APG sources:

```text
GOVERNANCE.md
.governance/manifest.yaml
core policies
```

Project facts are resolved from sources declared in the manifest.

An adapter must remain a compatibility layer, not a second governance system.

`PROJECT.md` is optional and must not be assumed unless declared by the manifest.
