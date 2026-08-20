# Governance Model

## Core governance questions

```text
What is authoritative?
Which rules apply here?
What is allowed?
What proves the result?
```

## Authority and specificity

A more specific local instruction is not automatically more authoritative.

Protected root constraints remain in force unless an explicit, authorized exception mechanism exists.

## Source resolution

Project facts should be resolved from authoritative project-native sources declared in the APG manifest.

APG should not require duplicate project documentation.

## Separation

```text
Governance -> authority, protected rules, precedence
Manifest   -> source/index and resolution metadata
Policy     -> constraints
Workflow   -> optional procedure
Context    -> optional helper / project source
Role       -> optional responsibility guidance
Validation -> proof requirements
```

## Core inheritance rule

Child rules may specialize or restrict parent rules.

They must not silently weaken protected parent policy or replace authoritative project sources without an authorized governance change.
