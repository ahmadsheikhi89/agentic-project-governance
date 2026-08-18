# Architecture

APG separates the project contract from the AI tool.

```text
Human / Team
    ↓
AI Tool / Agent
    ↓
Tool Adapter
    ↓
Project Entry Point
    ↓
Governance Resolver
    ├── GOVERNANCE.md
    ├── PROJECT.md
    ├── Scoped Instructions
    ├── Policies
    ├── Workflow
    ├── Role
    └── Context
    ↓
Task Execution
    ↓
Validation
    ↓
Evidence
    ↓
Report / Handover
```

The adapter is replaceable. The project contract is canonical.
