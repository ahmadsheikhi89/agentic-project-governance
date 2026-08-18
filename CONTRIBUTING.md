# Contributing

Contributions are welcome.

## Principles

Contributions should preserve:

- vendor neutrality;
- separation of governance, policy, workflow, context, role, and task;
- explicit authority;
- evidence-based validation;
- minimal consuming-project overhead;
- readable plain-text artifacts.

## Before opening a pull request

1. Check existing issues and proposals.
2. Define the exact scope.
3. Avoid duplicating an existing policy or concept.
4. Update documentation when behavior changes.
5. Run:

```bash
./tools/validate-project.sh .
```

6. Report validation evidence in the pull request.

## Core semantic changes

Changes to precedence, authority, inheritance, manifest semantics, or protected-policy behavior should be proposed before implementation.

Use the proposal issue template.

## Commit scope

Prefer small, reviewable commits with clear intent.

## License

By contributing, you agree that your contribution is licensed under the repository MIT License.
