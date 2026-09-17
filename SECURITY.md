# Security Policy

## Secrets policy

This repository must never contain real secrets. `.gitignore` already blocks the common shapes of these
(`.env*`, `wp-config.php`, `*.key`, `*.pem`, `credentials.json`, database dumps) — do not remove those
entries, and do not commit around them (e.g. by renaming a secret file to dodge the pattern).

Never commit:
- `.env`, `.env.local`, `.env.staging`, `.env.production`
- Credentials, API keys, FTP passwords, SSH keys
- Private database dumps
- WordPress Application Passwords

`.env.example` in this repo contains only placeholder keys with no real values — copy it to `.env` locally
and fill in real values there; `.env` is git-ignored.

If Kestara (the agent) ever needs a secret to proceed with a phase, it should ask you to provide it through
a secure channel outside of chat/commit history where possible, and must never print a real secret value
back into a file, commit, or phase report.

## Reporting a vulnerability

If you find a security issue in this repository's scripts, workflows, or documentation guidance (for
example, a script that would mishandle secrets, or agent guidance that would lead to insecure WordPress
configuration), please open a private security advisory on GitHub
(`https://github.com/Inam337/kestara-wordpress-agent/security/advisories/new`) rather than a public issue.

This repository does not itself run any production infrastructure — it is a framework you clone into your
own project — so most WordPress-specific security concerns (plugin vulnerabilities, hosting configuration,
etc.) are the responsibility of the project built from this template, per the checks in Phase 18 (Security)
of `CLAUDE.md`.
