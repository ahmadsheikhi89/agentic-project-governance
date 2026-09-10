# APG Reference Repository

## Repository identity

**Name:** Agentic Project Governance  
**Short name:** APG  
**Release:** 1.1.0
**Website:** https://apg.opspro.ir/  
**Repository:** https://github.com/ahmadsheikhi89/agentic-project-governance  
**Initial Author & Maintainer:** Ahmad Sheikhi — Senior DevOps Engineer

## Purpose of this repository

This repository is the **APG reference repository**. It contains the APG governance specification, reference implementation, examples, optional extensions, adapters, tooling, and public documentation.

This file describes the APG reference repository itself.

It does **not** mean that every project adopting APG must create a `PROJECT.md`.

Consuming projects may use their existing authoritative sources, such as:

```text
README.md
docs/architecture.md
specs/
runbooks/
VERSION
product documentation
service catalogs
```

The APG manifest should point to the project sources that are authoritative for that repository.

## APG purpose

APG defines a vendor-neutral, repository-native governance contract for structured collaboration between humans and AI agents.

Its core responsibilities are:

- identify authoritative project sources;
- resolve applicable governance and scoped instructions;
- make authority boundaries explicit;
- define validation and evidence requirements.

## Reference repository contents

This repository intentionally contains more than a minimal APG installation:

- specification and website;
- adapters;
- profiles;
- examples;
- optional workflows, roles, context helpers, and templates;
- validation/bootstrap tooling.

A consuming project should adopt only what it needs.

## Non-goals

APG is not:

- an AI model;
- an agent orchestrator;
- a project-management framework;
- a CI/CD engine;
- an infrastructure-as-code engine;
- an IAM/RBAC replacement;
- a mandatory generation system.

## Public website

GitHub Pages source:

```text
main:/docs
```

Custom domain:

```text
apg.opspro.ir
```

## License

MIT License.
