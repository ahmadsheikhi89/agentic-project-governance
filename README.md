# Agentic Project Governance (APG)

**A shared project governance contract between humans and AI systems.**

Agentic Project Governance (APG) is a vendor-neutral, repository-native project governance contract shared between humans and AI systems.

It makes authoritative sources, applicable rules, authority boundaries, and validation requirements explicit and versioned for everyone working on the project.

APG is a governance contract and standardization framework. It is **not** an official industry standard, and it does not prescribe how every project must operate.

**Website:** https://apg.opspro.ir/  
**Release:** `v1.1.0`
**Initial Author & Maintainer:** **Ahmad Sheikhi — Senior DevOps Engineer**

---

## APG at a glance

APG is applied **to a project**. It is not the project itself.

| Concept | What it is | Relationship to APG |
|---|---|---|
| **APG** | The canonical, human-approved project governance contract | Declares how sources, rules, authority, and validation are resolved |
| **`AGENTS.md`** | A tool-facing entry point and scoped instruction adapter | Routes compatible tools into the APG contract; it is not APG itself |
| **`CLAUDE.md`, `GEMINI.md`, Copilot instructions** | Vendor- or tool-facing instruction adapters | Point different tools to the same canonical contract |
| **APG manifest** | A machine-readable governance index | Declares where authoritative project information and governance rules are resolved from |
| **AI agent** | Generator and/or consumer that may discover, propose, generate, consume, or validate | Operates under the contract; it is not the governance authority |
| **MCP server** | A runtime integration that exposes tools or data | May help a consumer act; it is not APG or the manifest |
| **Prompt or system instructions** | Runtime guidance for a model or tool | May carry or reference APG instructions, but do not replace the approved contract |
| **Project documentation** | Project facts, decisions, and technical knowledge | Remains authoritative where the manifest declares it authoritative |
| **CI/CD** | Build, test, deployment, and enforcement automation | Can enforce controls and produce evidence declared by APG |
| **IAM/RBAC** | Runtime identity and access control | Enforces permissions; APG documents authority boundaries but does not grant access |
| **Project-management tools** | Systems for planning and tracking work | May contain project records; APG does not replace them |

In short:

```text
APG                                      = canonical governance contract
AGENTS.md / CLAUDE.md / GEMINI.md        = tool-facing adapters or entry points
.governance/manifest.yaml                = machine-readable governance index
```

The manifest is not an agent, MCP server, workflow engine, prompt, database, executable system, or infrastructure inventory.

## Four core questions

APG makes four answers explicit:

```text
1. What is authoritative?
2. Which rules apply here?
3. What is allowed?
4. What proves the result?
```

Its small core is:

```text
Sources
Rules
Authority
Validation / Evidence
```

Core properties are **explicit**, **repeatable**, **verifiable**, **vendor-neutral**, **human-approved**, and **repository-native**.

## Reference project truth; do not duplicate it

> **APG references existing authoritative project facts and owns the governance contract around them.**

The project remains the source of its own facts. APG declares which existing sources are authoritative instead of requiring those facts to be copied into a second knowledge base.

For a realistic system design specification (SDS), a manifest might resolve project facts from:

| Source | Authoritative for |
|---|---|
| `docs/SDS.xlsx` | Infrastructure inventory |
| `docs/architecture.md` | Architecture |
| `VERSION` | Release and version identity |
| `.gitlab-ci.yml` | Deployment automation |

Suppose the repository contains a conflict:

```text
README.md:      PRD = srv-old
docs/SDS.xlsx:  PRD = srv-03
```

If the APG manifest declares `docs/SDS.xlsx` authoritative for infrastructure, every consumer must resolve the production infrastructure fact from `docs/SDS.xlsx`: `PRD = srv-03`. APG does not copy that inventory into the manifest; the manifest points to its approved source.

## Human authority and AI consumers

Codex, Claude, Gemini, Copilot, and other AI systems may discover, propose, generate, consume, and validate. They are not themselves the governance authority.

Humans or existing authoritative organizational mechanisms resolve and approve organizational facts and authority decisions. Unknown facts must not be invented. For example:

```text
UNRESOLVED:
Production deployment authority is not defined.
Human or authoritative-source resolution required.
```

Do not infer an approver.

A simple governance lifecycle is:

```text
Discover
→ Propose
→ Human / authoritative resolution
→ Approve
→ Record
→ Validate
→ Reuse
```

## Repeatable governance, not identical prose

APG does not require different tools to produce identical natural-language output. Given the same approved APG contract, consumers should resolve the same:

- fact;
- source;
- rule;
- authority;
- validation requirement;
- governance decision.

Different wording is acceptable. Contradictory governance interpretation is not.

## Who APG is for

APG is most useful where governance ambiguity creates operational risk, particularly in:

- medium-sized businesses and larger organizations;
- multi-team projects;
- production-critical or regulated environments;
- external-vendor environments;
- projects with distributed documentation and ownership;
- environments using multiple AI systems or automation tools.

APG is **not for every repository**. For a small personal project, prototype, temporary experiment, or simple single-developer repository, `README.md` or `AGENTS.md` may be sufficient. AI use alone is not a reason to adopt APG.

> **APG should be introduced when the cost of ambiguity becomes higher than the cost of governance.**

## Brownfield-first adoption

APG should work on an existing repository without forcing a reorganization:

```text
existing-project/
├── README.md
├── docs/
├── src/
├── .gitlab-ci.yml
├── runbooks/
├── AGENTS.md
├── GOVERNANCE.md
└── .governance/
    ├── manifest.yaml
    └── policies/
```

APG governs work on that repository. It does not replace its source tree, documentation model, CI/CD, project-management workflow, or existing organizational authority.

A minimal adoption can be:

```text
my-project/
├── AGENTS.md
├── GOVERNANCE.md
└── .governance/
    ├── manifest.yaml
    └── policies/
        ├── authority.md
        └── validation.md
```

`PROJECT.md` is optional. Existing readmes, architecture documents, specifications, runbooks, service catalogs, and version files can remain the authoritative project sources.

## Thin, replaceable adapters

For Codex, `AGENTS.md` can act as the repository entry point:

```text
Codex
  ↓
AGENTS.md
  ↓
GOVERNANCE.md + .governance/manifest.yaml
  ↓
Applicable scoped instructions
  ↓
Relevant authoritative project sources
  ↓
Applicable policies / validation
```

Other tools can use thin adapters that point to the same contract. Important project governance must not exist only in a vendor-specific adapter.

## Core and optional extensions

**Core:**

- authoritative project sources;
- applicable rules and source resolution;
- authority and approval boundaries;
- validation and evidence requirements;
- manifest/index.

**Optional extensions:**

- additional policies;
- workflows;
- context helpers;
- roles;
- templates;
- profiles;
- generators and validators.

The reference repository includes optional material to demonstrate the framework. A consuming project adopts only what it needs.

APG does not require GitFlow, Jira, Kubernetes, GitHub, GitLab, any specific AI vendor, an SDS, or any specific organizational structure.

## Runtime enforcement

APG declares governance. Runtime systems enforce it.

CI/CD approval gates, protected environments, IAM, RBAC, `sudo`, and platform policy controls can enforce permissions and produce evidence. APG does not replace those systems or turn Markdown into access control.

Recommended validation statuses are:

```text
PASS
FAIL
BLOCKED
NO_CHANGE
NOT_VALIDATED
```

`PASS` is valid only when the required validation actually ran and succeeded.

## Documentation

- [Core model](docs/core-model.md)
- [Adoption model](docs/adoption-model.md)
- [Bilingual specification](docs/specification.md)
- [Architecture](docs/architecture.md)
- [Governance model](docs/governance-model.md)
- [Instruction resolution](docs/instruction-resolution.md)
- [Adapter model](docs/adapter-model.md)
- [Authoring guide](docs/authoring-guide.md)
- [Prior art](docs/prior-art.md)

## Public website

The documentation website is published from `main:/docs` at https://apg.opspro.ir/.

## License

APG is released under the [MIT License](LICENSE).

Copyright © 2026 Ahmad Sheikhi.
