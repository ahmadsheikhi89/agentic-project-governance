# Validation Policy

A claim is valid only when the required check was actually performed.

## Status vocabulary

- `PASS`: required validation ran and succeeded.
- `FAIL`: required validation ran and failed.
- `BLOCKED`: a required dependency, permission, authority, or input prevents progress.
- `NO_CHANGE`: no modification was required or performed.
- `NOT_VALIDATED`: work may exist but required validation evidence is unavailable or was not executed.

Never use `PASS` as a synonym for "looks correct."
