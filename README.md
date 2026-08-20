# Agentic Project Governance (APG)

**Repository-native governance for human and AI project work.**

Agentic Project Governance (APG) is a vendor-neutral governance contract that lives inside a repository. It makes project authority, applicable rules, authoritative sources, and validation requirements explicit for humans and AI agents.

**Website:** https://apg.opspro.ir/  
**Release:** `v1.0.0`  
**Initial Author & Maintainer:** **Ahmad Sheikhi — Senior DevOps Engineer**

---

## What APG is

APG is applied **to a project**. It is not the project itself.

It answers four core questions:

```text
1. What is authoritative?
2. Which rules apply here?
3. What is allowed?
4. What proves the result?
```

APG keeps those answers versioned with the repository so that humans and tools such as Codex, Claude Code, Gemini, or Copilot can work from the same project contract.

## What APG is not

APG is not:

- an AI model or agent runtime;
- a replacement for Codex, Claude Code, Gemini, or Copilot;
- a CI/CD or infrastructure-as-code engine;
- a project-management system;
- a mandatory source-code generator;
- a knowledge dump;
- an IAM, RBAC, or security-enforcement system.

Runtime tools enforce controls. APG declares the project governance contract they should operate under.

## Core model

```text
Existing Project
│
├── source / docs / CI / IaC / runbooks / specs
│
└── APG governance layer
    ├── Governance
    ├── Authority
    ├── Source & rule resolution
    ├── Validation
    └── Evidence requirements
             │
             ├── AGENTS.md -> Codex adapter / entry
             ├── CLAUDE.md -> Claude adapter
             ├── GEMINI.md -> Gemini adapter
             └── other consumers
```

The project remains the source of its own project facts. APG points to authoritative project sources instead of requiring them to be duplicated under APG directories.

## Minimal adoption

A consuming project does **not** need the full reference repository.

A minimal APG installation can be:

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

`AGENTS.md` is an adapter/router for agent tools. The canonical governance remains in the APG contract.

`PROJECT.md` is **not mandatory** for consuming projects. If a project already has `README.md`, architecture documentation, specifications, runbooks, or other authoritative sources, the manifest can reference those existing files.

## Brownfield first

APG should work on an existing repository without forcing a reorganization.

Example:

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

APG governs work on that repository. It does not replace its source tree, documentation model, CI/CD, or project-management workflow.

## Core vs optional extensions

**Core:**

- governance semantics;
- authority;
- source and rule resolution;
- validation;
- evidence requirements;
- manifest/index.

**Optional extensions:**

- additional policies;
- workflows;
- context helpers;
- roles;
- templates;
- profiles;
- generators and validators.

The reference repository includes optional material because it demonstrates the framework. A consuming project only adopts what it needs.

## Codex and other agents

For Codex, `AGENTS.md` acts as the repository entry/router:

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

Other tools use thin adapters that point to the same canonical APG contract.

## Validation integrity

APG separates a result from proof of that result.

Recommended status vocabulary:

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

The documentation website is published from:

```text
main:/docs
```

Custom domain:

```text
https://apg.opspro.ir/
```

## License

APG is released under the [MIT License](LICENSE).

Copyright © 2026 Ahmad Sheikhi.
