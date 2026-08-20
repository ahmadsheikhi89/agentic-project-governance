# Governance

## 1. Scope

This document defines the normative governance contract for the Agentic Project Governance reference repository.

The APG framework itself is governed by this file. Consuming projects define their own governance contract when adopting APG.

## 2. Core APG semantics

APG exists to make four things explicit:

1. authoritative project sources;
2. applicable rules for a scope;
3. allowed actions and approval boundaries;
4. validation and evidence requirements.

Optional workflows, roles, templates, profiles, and context helpers MUST NOT become hidden prerequisites for these core semantics.

## 3. Authority

Repository content may be read and analyzed without special approval.

Modifying, publishing, tagging, releasing, deleting, or changing the production/public website requires explicit maintainer intent.

AI-generated proposals do not constitute approval.

## 4. Protected constraints

The following constraints MUST NOT be silently weakened by local instructions:

- security controls;
- secret-handling rules;
- authorship and license notices;
- validation integrity;
- required approval boundaries;
- canonical source resolution;
- vendor-neutral core semantics.

## 5. Authority precedence

Conceptual authority precedence:

```text
External platform / security restrictions
→ Organization mandatory policy
→ Repository GOVERNANCE.md
→ Protected project policies
→ Parent scoped instructions
→ Nearest scoped instructions
→ Applicable optional workflow
→ Applicable optional role guidance
→ Current task
→ Framework defaults
```

Specificity does not automatically grant greater authority.

Loading order and authority precedence are separate concepts.

## 6. Source resolution

APG MUST NOT require a project to duplicate project facts merely to adopt governance.

Authoritative project sources SHOULD be declared through the manifest and may point to existing repository artifacts such as:

```text
README.md
architecture documents
specifications
runbooks
version files
service catalogs
```

A project-specific `PROJECT.md` MAY be used, but it is not universally required by APG.

## 7. Rule specialization

A child scope MAY:

- add detail;
- add stronger validation;
- add stronger safety restrictions;
- select a specialized optional workflow.

A child scope MUST NOT silently:

- remove a required approval;
- disable security requirements;
- replace an authoritative source without an authorized governance change;
- redefine evidence to make failed or unperformed validation appear successful.

## 8. Validation integrity

A validation claim requires observable evidence.

`PASS` MUST NOT be used when the required validation was not performed.

Use `NOT_VALIDATED` when work exists but the required proof is unavailable or was not executed.

## 9. Security

Secrets MUST NOT be committed to this repository.

Governance documents may reference a secret-management mechanism but MUST NOT contain runtime credentials.

## 10. Vendor neutrality

The canonical governance model MUST remain usable without a proprietary agent runtime.

Adapters MAY improve compatibility with specific tools but MUST NOT become the only location of important project rules.

## 11. Runtime enforcement boundary

APG declares governance. Runtime controls enforce it.

Examples of enforcement systems include:

```text
CI/CD approval gates
protected environments
IAM
RBAC
sudo
Kubernetes policy controls
```

A Markdown policy MUST NOT be represented as equivalent to runtime access control.

## 12. Change classification

Core semantic changes include:

- authority precedence changes;
- source-resolution changes;
- manifest schema changes;
- inheritance changes;
- validation/evidence semantics;
- protected-policy semantic changes.

Core semantic changes SHOULD include documentation, compatibility impact, and migration notes.

## 13. Release governance

Public releases use semantic versioning:

```text
MAJOR.MINOR.PATCH
```

The initial public release is:

```text
v1.0.0
```

Release artifacts SHOULD include:

- versioned Git tag;
- changelog entry;
- website update;
- specification update;
- validation report.

## 14. Ownership

Initial Author & Maintainer:

```text
Ahmad Sheikhi
Senior DevOps Engineer
```

Copyright © 2026 Ahmad Sheikhi.
