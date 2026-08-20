# Release v1.0.0

The public `v1.0.0` tag should point to the validated APG v1.0 core model.

Recommended local release sequence after all changes are committed and pushed:

```bash
./tools/validate-project.sh .
git status -sb
git rev-parse HEAD
```

Create the annotated tag only after validation:

```bash
git tag -a v1.0.0 -m "Agentic Project Governance v1.0.0"
git push origin v1.0.0
```

If replacing an earlier pre-launch `v1.0.0`, delete the old GitHub Release and old local/remote tag before creating the replacement tag.

Do not move or recreate the tag until the corrected `main` commit is final and validated.
