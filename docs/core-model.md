# APG Core Model

## Definition

Agentic Project Governance (APG) is a vendor-neutral, repository-native project governance contract shared between humans and AI systems.

It makes authoritative sources, applicable rules, authority boundaries, and validation requirements explicit and versioned for everyone working on the project.

APG is applied to a project. It is not the project itself, an AI agent, or an executable system.

APG is a governance contract and standardization framework. It standardizes how project governance is declared and resolved, not how every project must operate. It is not an official industry standard.

> **APG references existing authoritative project facts and owns the governance contract around them.**

## Four core questions

APG exists to answer:

```text
What is authoritative?
Which rules apply here?
What is allowed?
What proves the result?
```

## Small core

The APG core consists of four connected concerns:

| Concern | Purpose |
|---|---|
| Sources | Identify the authoritative project sources for a fact or subject |
| Rules | Resolve the governance and scoped instructions applicable to the work |
| Authority | Define allowed actions, decision owners, and approval boundaries |
| Validation / Evidence | Define what must be checked and what proves the result |

The manifest is the machine-readable governance index that declares where authoritative project information and governance rules are resolved from. It is not an agent, MCP server, workflow engine, prompt, database, executable system, or infrastructure inventory.

## Contract, adapters, and consumers

```text
Authoritative project sources
           │
           ▼
Approved APG contract
  ├── Sources
  ├── Rules
  ├── Authority
  └── Validation / Evidence
           │
           ▼
Thin tool adapters
  ├── AGENTS.md
  ├── CLAUDE.md
  ├── GEMINI.md
  └── Copilot instructions
           │
           ▼
Humans / AI systems / automation
```

Tool-specific instruction files are entry points into the same canonical contract. They must remain thin; canonical project governance must not exist only in an adapter.

Codex, Claude, Gemini, Copilot, and other AI systems may discover, propose, generate, consume, and validate. They are consumers of governance, not the governance authority.

## Project facts and source resolution

APG does not become a second project-documentation or knowledge system. Existing sources remain where they already live, and the manifest declares which source is authoritative for each subject.

A realistic system design specification (SDS) example is:

| Source | Authoritative for |
|---|---|
| `docs/SDS.xlsx` | Infrastructure inventory |
| `docs/architecture.md` | Architecture |
| `VERSION` | Release and version identity |
| `.gitlab-ci.yml` | Deployment automation |

If sources conflict:

```text
README.md:      PRD = srv-old
docs/SDS.xlsx:  PRD = srv-03
```

and the manifest declares `docs/SDS.xlsx` authoritative for infrastructure, all consumers resolve the production infrastructure fact from that file: `PRD = srv-03`. The manifest points to the source; it does not duplicate the inventory.

`PROJECT.md` is optional. The APG reference repository uses one because it is useful here, but consuming projects may rely on existing readmes, architecture documents, specifications, runbooks, version files, service catalogs, or other project-native sources.

## Rule resolution

Rules are resolved for the current scope. Parent instructions establish the baseline, while local instructions may specialize or restrict it without silently weakening protected policy or bypassing required approval.

```text
Task
  ↓
Resolve scope
  ↓
Resolve applicable rules
  ↓
Resolve relevant authoritative sources
  ↓
Act within authority
  ↓
Validate and retain evidence
```

This keeps task context relevant without turning APG into a context dump.

## Human authority

Humans or existing authoritative organizational mechanisms resolve and approve organizational facts and authority decisions. APG records those approved decisions; an AI-generated proposal does not approve itself.

Unknown organizational facts must not be invented. For example:

```text
UNRESOLVED:
Production deployment authority is not defined.
Human or authoritative-source resolution required.
```

Do not infer an approver.

Authority is not the same as role. A person may be an operator but still lack deployment authority for a specific environment.

Example action classes are:

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

## Governance lifecycle

```text
Discover
→ Propose
→ Human / authoritative resolution
→ Approve
→ Record
→ Validate
→ Reuse
```

Discovery and generation can be automated. Resolution and approval remain with the declared authority unless a real organizational mechanism explicitly delegates them.

## Repeatability

APG does not require identical natural-language output from different consumers. Given the same approved contract, different humans and tools should resolve the same:

- fact;
- source;
- rule;
- authority;
- validation requirement;
- governance decision.

Different wording is acceptable. Contradictory governance interpretation is not.

## Validation and runtime enforcement

APG requires evidence-backed result claims. Recommended statuses are:

```text
PASS
FAIL
BLOCKED
NO_CHANGE
NOT_VALIDATED
```

`PASS` is valid only when required validation actually ran and succeeded.

APG declares governance. Runtime systems enforce controls. Examples include CI/CD approval gates, protected environments, IAM, RBAC, `sudo`, and Kubernetes policy controls. APG neither grants access nor replaces those controls.

## Adoption boundary

APG is most useful where governance ambiguity creates operational risk: medium-sized businesses, larger organizations, multi-team projects, production-critical or regulated environments, external-vendor work, distributed documentation and ownership, and environments using multiple AI systems or automation tools.

APG is not for every repository. A readme or tool-facing instruction file may be sufficient for a small personal project, prototype, temporary experiment, or simple single-developer repository.

> **APG should be introduced when the cost of ambiguity becomes higher than the cost of governance.**

AI use alone is not a reason to adopt APG.

## Brownfield-first, vendor-neutral adoption

APG can be added to an existing repository without reorganizing project facts or replacing existing systems. It does not require GitFlow, Jira, Kubernetes, GitHub, GitLab, any specific AI vendor, an SDS, or any specific organizational structure.

Core properties are:

```text
Explicit
Repeatable
Verifiable
Vendor-neutral
Human-approved
Repository-native
```

## Optional extensions

Additional policies, workflows, context helpers, roles, templates, profiles, generators, and validation/reporting tooling are optional. A project must not create optional extension directories merely to adopt APG.

The reference repository is intentionally larger because it demonstrates these extensions. A consuming project installs only the APG core and the optional material it needs.
