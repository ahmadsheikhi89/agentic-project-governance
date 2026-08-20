# Tool Adapters

Adapters expose canonical APG governance through tool-specific instruction conventions.

An adapter is an **entry/router**, not a second source of truth.

Canonical APG sources are:

```text
GOVERNANCE.md
.governance/manifest.yaml
.governance/policies/authority.md
.governance/policies/validation.md
```

Project facts are resolved from the authoritative project sources declared in the manifest.

Adapters MUST remain thin and MUST NOT duplicate canonical project policy.
