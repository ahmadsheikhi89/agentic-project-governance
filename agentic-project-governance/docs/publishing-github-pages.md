# Publish APG with GitHub Pages and cPanel

Target:

```text
Repository: https://github.com/ahmadsheikhi89/agentic-project-governance
Pages source: main:/docs
Custom domain: apg.opspro.ir
```

## 1. Push the repository first

Create a public GitHub repository named:

```text
agentic-project-governance
```

Push the `main` branch and the `v1.0.0` tag.

## 2. Enable GitHub Pages

In GitHub:

```text
Repository
→ Settings
→ Pages
→ Build and deployment
→ Source: Deploy from a branch
→ Branch: main
→ Folder: /docs
→ Save
```

The publishing entry point is:

```text
docs/index.html
```

## 3. Register the custom domain in GitHub

Before creating the public DNS alias, configure:

```text
Repository
→ Settings
→ Pages
→ Custom domain
→ apg.opspro.ir
→ Save
```

The repository already contains:

```text
docs/CNAME
```

with:

```text
apg.opspro.ir
```

The CNAME file does not replace the GitHub Pages setting; configure both.

## 4. Create the DNS record in cPanel

In cPanel:

```text
Domains
→ Zone Editor
→ opspro.ir
→ Manage
→ Add Record
```

Create:

```text
Type:   CNAME
Name:   apg.opspro.ir.
Target: ahmadsheikhi89.github.io.
TTL:    Default
```

Some cPanel installations accept `apg` in the Name field and normalize it automatically.

Do not enter:

```text
https://
/agentic-project-governance
```

in the CNAME target.

Before saving, ensure there is no conflicting `A`, `AAAA`, or other `CNAME` record for `apg.opspro.ir`.

## 5. Verify DNS

```bash
dig +short CNAME apg.opspro.ir
```

Expected:

```text
ahmadsheikhi89.github.io.
```

You may also use:

```bash
nslookup -type=CNAME apg.opspro.ir
```

## 6. Enable HTTPS

After GitHub Pages reports that the DNS check is successful and the TLS certificate is ready:

```text
Repository
→ Settings
→ Pages
→ Enforce HTTPS
```

## 7. Validate the website

```bash
curl -I https://apg.opspro.ir/
```

Then open:

```text
https://apg.opspro.ir/
```

## Important

This is a DNS alias to GitHub Pages, not an HTTP redirect hosted by cPanel.

The site content remains hosted and versioned in GitHub.
