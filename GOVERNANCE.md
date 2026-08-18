# Governance

## 1. Scope

This document defines the normative governance contract for the Agentic Project Governance reference repository.

## 2. Authority

Repository content may be read and analyzed without special approval.

Modifying, publishing, tagging, releasing, deleting, or changing the production/public website requires explicit maintainer intent.

AI-generated proposals do not constitute approval.

## 3. Protected constraints

The following constraints MUST NOT be silently weakened by local instructions:

- security controls;
- secret-handling rules;
- authorship and license notices;
- validation integrity;
- required approval boundaries;
- vendor-neutral core semantics.

## 4. Instruction precedence

Conceptual authority precedence:

```text
External platform / security restrictions
→ Organization mandatory policy
→ Repository GOVERNANCE.md
→ Protected project policies
→ Parent scoped instructions
→ Nearest scoped instructions
→ Applicable workflow
→ Role guidance
→ Current task
→ Framework defaults
```

Specificity does not automatically grant greater authority.

## 5. Rule specialization

A child scope MAY:

- add detail;
- add stronger validation;
- add stronger safety restrictions;
- select a specialized workflow.

A child scope MUST NOT silently:

- remove a required approval;
- disable security requirements;
- redefine evidence to make failed or unperformed validation appear successful.

## 6. Validation integrity

A validation claim requires observable evidence.

`PASS` MUST NOT be used when the required validation was not performed.

Use `NOT_VALIDATED` when work exists but the required proof is unavailable or was not executed.

## 7. Security

Secrets MUST NOT be committed to this repository.

Governance documents may reference a secret-management mechanism but MUST NOT contain runtime credentials.

## 8. Vendor neutrality

The canonical governance model MUST remain usable without a proprietary agent runtime.

Adapters MAY improve compatibility with specific tools but MUST NOT become the only location of important project rules.

## 9. Change classification

Core semantic changes include:

- precedence changes;
- authority model changes;
- manifest schema changes;
- inheritance changes;
- protected policy semantic changes.

Core semantic changes SHOULD include documentation, compatibility impact, and migration notes.

## 10. Release governance

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

## 11. Ownership

Initial Author & Maintainer:

```text
Ahmad Sheikhi
Senior DevOps Engineer
```

Copyright © 2026 Ahmad Sheikhi.
