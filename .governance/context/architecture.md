# Architecture Context

This file describes the APG reference repository itself.

APG separates durable project governance from vendor-specific agent configuration and from ordinary project facts.

```text
Existing Project Sources
        │
        ▼
APG Contract
├── Governance
├── Manifest / source index
├── Authority
└── Validation / evidence
        │
        ├── Codex adapter
        ├── Claude adapter
        ├── Gemini adapter
        └── other consumers
```

Optional workflows, context helpers, roles, templates, profiles, and tooling extend the reference implementation but do not define the minimum APG core.
