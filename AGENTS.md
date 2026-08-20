# AGENTS.md

## Purpose

This file is the repository entry point for AI agents. It is an adapter/router into the APG contract, not the complete project knowledge base.

## Required reading order

1. Read `GOVERNANCE.md`.
2. Read `.governance/manifest.yaml`.
3. Determine the exact working scope.
4. Resolve applicable parent and local `AGENTS.md` files from repository root to the target path.
5. Resolve only the authoritative project sources and governance extensions relevant to the task.
6. Inspect existing repository evidence before creating or modifying artifacts.
7. Perform only actions allowed by the current task and authority boundary.
8. Validate results using the applicable validation policy.
9. Report what changed, what was validated, the supporting evidence, and anything not validated.

## Canonical APG sources

- Governance: `GOVERNANCE.md`
- Manifest / source index: `.governance/manifest.yaml`
- Core authority policy: `.governance/policies/authority.md`
- Core validation policy: `.governance/policies/validation.md`

Project facts and project documentation are resolved from the sources declared in the manifest.

`PROJECT.md` may exist in a project, but it is not an APG requirement.

## Optional extensions

Load only when applicable:

- additional policies: `.governance/policies/`
- workflows: `.governance/workflows/`
- context helpers: `.governance/context/`
- roles: `.governance/roles/`
- templates: `.governance/templates/`

Optional extensions are not hidden prerequisites for APG.

## Scope and inheritance

Local `AGENTS.md` files may specialize or restrict parent instructions for their subtree.

Local instructions MUST NOT silently:

- weaken protected parent policy;
- bypass required approval;
- bypass security controls;
- redefine authoritative project sources without an allowed governance change;
- claim validation that was not performed.

## Default execution behavior

Before modifying the repository:

- inspect existing project structure;
- use authoritative sources declared by the APG manifest;
- reuse existing artifacts where appropriate;
- make the minimum complete change;
- avoid duplicate governance or duplicate project documentation;
- preserve vendor neutrality;
- load only task-relevant context.

## Validation statuses

Use only when supported by evidence:

- `PASS`
- `FAIL`
- `BLOCKED`
- `NO_CHANGE`
- `NOT_VALIDATED`

## Stop conditions

Stop at the decision boundary when:

- required authority is missing;
- a protected rule conflicts with the requested action;
- the authoritative source for a required fact cannot be resolved safely;
- required evidence cannot be obtained and proceeding would create a false validation claim;
- the task is materially ambiguous and guessing would increase risk.
