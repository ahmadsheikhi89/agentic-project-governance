# Release v1.0.0

Recommended first public release commands after creating the empty GitHub repository:

```bash
git init
git branch -M main
git add .
git commit -m "release: APG v1.0.0"
git tag -a v1.0.0 -m "Agentic Project Governance v1.0.0"
git remote add origin https://github.com/ahmadsheikhi89/agentic-project-governance.git
git push -u origin main
git push origin v1.0.0
```

Before committing, verify your Git identity:

```bash
git config user.name
git config user.email
```

Expected author name:

```text
Ahmad Sheikhi
```

Use an email address associated with your GitHub account so GitHub can attribute the commit correctly.
