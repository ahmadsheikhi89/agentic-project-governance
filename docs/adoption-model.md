# APG Adoption Model

## Brownfield adoption

APG should fit an existing repository without forcing a project reorganization.

```text
existing-project/
├── README.md
├── docs/
├── src/
├── CI/CD
├── runbooks/
├── AGENTS.md
├── GOVERNANCE.md
└── .governance/
    ├── manifest.yaml
    └── policies/
        ├── authority.md
        └── validation.md
```

The manifest points to the project sources that are already authoritative.

This is the preferred model for existing production-style repositories.

## Greenfield adoption

A new project can start with only the APG core:

```text
new-project/
├── AGENTS.md
├── GOVERNANCE.md
└── .governance/
    ├── manifest.yaml
    └── policies/
        ├── authority.md
        └── validation.md
```

Project-specific documentation and implementation artifacts are added by the project itself.

## Minimal adoption rule

Do not copy the full APG reference repository into a consuming project.

Adopt only what is required.

## Optional `PROJECT.md`

A project may create `PROJECT.md` when a single project summary is useful.

If equivalent authoritative information already exists, the manifest should reference those existing files instead of duplicating them.

## Optional extensions

Add only when needed:

```text
.governance/workflows/
.governance/context/
.governance/roles/
.governance/templates/
additional policies
profiles
```

## Acceptance criteria

A good APG adoption:

- does not duplicate existing project facts;
- clearly identifies authoritative sources;
- makes authority boundaries explicit;
- defines validation and evidence requirements;
- keeps agent adapters thin;
- remains understandable to humans;
- remains meaningful when a specific AI vendor is absent.
