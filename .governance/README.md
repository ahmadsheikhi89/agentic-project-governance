# `.governance/`

This directory contains the APG governance model for the reference repository.

## Core

The APG core is intentionally small:

```text
manifest.yaml
policies/authority.md
policies/validation.md
```

Together with the repository governance contract, these files define:

- authoritative source resolution;
- authority boundaries;
- validation and evidence semantics.

## Optional extensions

The reference repository also contains optional extension directories:

```text
policies/   -> additional constraints
workflows/  -> optional procedures
context/    -> optional context helpers for this repository
roles/      -> optional responsibility guidance
templates/  -> optional reusable artifacts
```

A consuming project does not need to create all of these directories.

Project facts should normally remain in their existing authoritative project locations. APG should reference them through the manifest rather than duplicate them under `.governance/`.
