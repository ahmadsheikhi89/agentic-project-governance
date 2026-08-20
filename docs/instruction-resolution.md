# Instruction Resolution

Conceptual task resolution:

```text
Determine task scope
→ Read root governance
→ Read APG manifest
→ Resolve root-to-leaf scoped instructions
→ Resolve applicable policies
→ Resolve authoritative project sources relevant to the task
→ Load optional workflow/role/context only when needed
→ Inspect repository evidence
→ Perform task within authority
→ Validate
→ Report evidence
```

Native AI tools may load instruction files differently. APG defines the project-level governance semantics above those vendor-specific mechanics.

`PROJECT.md` is not assumed to exist unless the manifest declares it as a project source.
