# Authority Policy

## Default classes

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

## Defaults

- `OBSERVE`: allowed.
- `PROPOSE`: allowed.
- `MODIFY`: task-scoped.
- `EXECUTE`: task-scoped and subject to applicable workflow.
- `DEPLOY`: approval-required.
- `PUBLISH`: approval-required.
- `DELETE`: approval-required.
- `APPROVE`: human/authorized-owner responsibility unless explicitly delegated by real access control.

A local instruction MUST NOT silently widen authority.
