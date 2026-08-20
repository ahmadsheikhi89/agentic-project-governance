# Architecture

APG is a governance layer applied to an existing or new project.

```text
Project Facts / Existing Sources
        │
        ▼
APG Manifest + Governance
        │
        ├── Authority
        ├── Rule resolution
        ├── Source resolution
        └── Validation / Evidence
        │
        ▼
Tool Adapters / Human Consumers
        │
        ▼
Project Work
        │
        ▼
Runtime Enforcement + Evidence
```

APG does not own the project's source tree, CI/CD, IaC, documentation system, or project-management process.

Adapters are replaceable. The canonical governance contract is durable.

See also:

- [Core model](core-model.md)
- [Adoption model](adoption-model.md)
