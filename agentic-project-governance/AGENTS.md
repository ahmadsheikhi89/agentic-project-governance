# AGENTS.md

## Purpose

This file is the repository entry point for AI agents. It is a router, not the complete project knowledge base.

## Required reading order

1. Read `GOVERNANCE.md`.
2. Read `PROJECT.md`.
3. Determine the exact working scope.
4. Resolve applicable parent and local `AGENTS.md` files from repository root to the target path.
5. Load only the policies, workflow, role, and context required for the task.
6. Inspect existing repository evidence before creating or modifying artifacts.
7. Perform only actions allowed by the current task and authority boundary.
8. Validate results using the applicable validation policy.
9. Report what changed, what was validated, the supporting evidence, and anything not validated.

## Canonical governance

- Project governance: `GOVERNANCE.md`
- Project definition: `PROJECT.md`
- Manifest: `.governance/manifest.yaml`
- Policies: `.governance/policies/`
- Workflows: `.governance/workflows/`
- Context: `.governance/context/`
- Roles: `.governance/roles/`

## Scope and inheritance

Local `AGENTS.md` files may specialize or restrict parent instructions for their subtree.

Local instructions MUST NOT silently:

- weaken protected parent policy;
- bypass required approval;
- bypass security controls;
- claim validation that was not performed.

## Default execution behavior

Before modifying the repository:

- inspect existing structure;
- reuse existing artifacts where appropriate;
- make the minimum complete change;
- avoid duplicate governance;
- preserve vendor neutrality.

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
- required evidence cannot be obtained and proceeding would create a false validation claim;
- the task is materially ambiguous and guessing would increase risk.
