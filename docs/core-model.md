# APG Core Model

## Definition

Agentic Project Governance (APG) is a vendor-neutral, repository-native governance layer that gives humans and AI agents a shared, versioned contract for how work on a project is governed and validated.

APG is applied to a project. It is not the project itself.

## Four core questions

APG exists to answer:

```text
What is authoritative?
Which rules apply here?
What is allowed?
What proves the result?
```

## Core

The APG core consists of:

- governance semantics;
- authority;
- authoritative-source resolution;
- scoped rule resolution;
- validation and evidence requirements;
- manifest/index.

## Optional extensions

The following are optional:

- additional policies;
- workflows;
- context helpers;
- roles;
- templates;
- profiles;
- generators;
- validation/reporting tooling.

A project must not be forced to create optional extension directories merely to adopt APG.

## Adapters

Tool-specific instruction files are adapters into the APG contract.

Examples:

```text
AGENTS.md
CLAUDE.md
GEMINI.md
.github/copilot-instructions.md
```

Adapters must remain thin. Canonical project governance belongs in APG canonical sources.

## Project facts

APG should not become a second project-documentation system.

Existing project sources may remain where they already live:

```text
README.md
docs/
specs/
runbooks/
VERSION
service catalogs
```

The APG manifest points to the sources that are authoritative.

## PROJECT.md

`PROJECT.md` is optional for consuming projects.

The APG reference repository uses one because it is useful for this repository, but APG does not require every consuming project to create one.

## Context

APG is not a context dump.

Preferred model:

```text
Task
  ↓
Resolve scope
  ↓
Resolve applicable rules
  ↓
Resolve authoritative project sources
  ↓
Load only relevant context
```

## Authority

Authority is not the same as role.

A person may be an operator but still lack deployment authority for a specific environment.

Example action classes:

```text
OBSERVE
PROPOSE
MODIFY
EXECUTE
DEPLOY
PUBLISH
DELETE
APPROVE
```

## Validation

APG requires evidence-backed result claims.

Recommended statuses:

```text
PASS
FAIL
BLOCKED
NO_CHANGE
NOT_VALIDATED
```

`PASS` is valid only when required validation actually ran and succeeded.

## Runtime enforcement

APG declares governance. Runtime systems enforce controls.

Examples:

```text
CI/CD approvals
protected environments
IAM
RBAC
sudo
Kubernetes policy controls
```

## Relationship to Codex and other agents

```text
Existing Project
      │
      ▼
APG Contract
      │
 ┌────┼────┐
 │    │    │
Codex Claude Human
```

For Codex:

```text
AGENTS.md
  ↓
GOVERNANCE.md
  ↓
.governance/manifest.yaml
  ↓
Applicable scoped instructions
  ↓
Relevant authoritative project sources
  ↓
Applicable policies and validation
```

The same APG contract remains meaningful without Codex.

## Reference repository vs consuming project

The reference repository is intentionally larger because it contains documentation, examples, profiles, adapters, website content, and tooling.

A consuming project installs only the APG core and the optional extensions it actually needs.
