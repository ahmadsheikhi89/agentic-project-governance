# Agentic Project Governance (APG)

**Vendor-neutral project governance for humans and AI agents.**

APG defines a repository-native contract for project rules, scoped instructions, context, authority, workflows, validation evidence, and handover.

**Website:** https://apg.opspro.ir/  
**Release:** `v1.0.0`  
**Initial Author & Maintainer:** **Ahmad Sheikhi — Senior DevOps Engineer**

---

## What problem does APG solve?

AI tools can generate code, infrastructure, documents, analysis, and business artifacts. They still need to know how *your project* works:

```text
What is this project?
Which rules apply here?
What am I allowed to do?
What needs human approval?
Which context is authoritative?
Which workflow should I follow?
How do I prove the result?
```

APG gives those answers a durable home in the repository.

## Core model

```text
Project
├── Governance
├── Project Definition
├── Scoped Instructions
├── Policies
├── Workflows
├── Context
├── Roles
├── Validation
└── Tool Adapters
```

The AI tool is replaceable. The project contract is durable.

## Start small

A consuming project does **not** need the entire reference repository.

```text
my-project/
├── AGENTS.md
├── GOVERNANCE.md
├── PROJECT.md
└── .governance/
    ├── manifest.yaml
    ├── policies/
    │   └── validation.md
    └── workflows/
        └── default.md
```

Add scoped `AGENTS.md`, policies, workflows, roles, and context only when the project actually needs them.

## Domains

The same governance model can be used for:

- DevOps and infrastructure automation
- software engineering
- platform engineering and SRE
- human resources
- industrial engineering
- business operations
- data and analytics
- research and documentation
- security, compliance, product, and other structured project work

## Documentation

- [Bilingual specification](docs/specification.md)
- [Architecture](docs/architecture.md)
- [Governance model](docs/governance-model.md)
- [Instruction resolution](docs/instruction-resolution.md)
- [Authoring guide](docs/authoring-guide.md)
- [GitHub Pages + cPanel publishing guide](docs/publishing-github-pages.md)
- [Prior art](docs/prior-art.md)

## Public website

The static website is published from:

```text
main:/docs
```

with the custom domain:

```text
apg.opspro.ir
```

The website is self-contained HTML5 with Persian/English language switching and light/dark themes.

## Release

Current release:

```text
v1.0.0
```

See [CHANGELOG.md](CHANGELOG.md).

## License

APG is released under the [MIT License](LICENSE).

Copyright © 2026 Ahmad Sheikhi.
