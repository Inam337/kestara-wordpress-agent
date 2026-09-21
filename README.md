<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset=".github/assets/logo-dark.svg">
    <source media="(prefers-color-scheme: light)" srcset=".github/assets/logo-light.svg">
    <img alt="Kestara" src=".github/assets/logo-light.svg" width="320">
  </picture>
</p>

<p align="center"><strong>Build with Precision. Move with Speed.</strong></p>

<p align="center">
  <img alt="License: MIT" src="https://img.shields.io/badge/license-MIT-2563EB?style=flat-square">
  <img alt="Methodology: AI-DLC" src="https://img.shields.io/badge/methodology-AI--DLC-D97706?style=flat-square">
  <img alt="Built for Claude Code" src="https://img.shields.io/badge/built%20for-Claude%20Code-111827?style=flat-square">
  <img alt="24 phases" src="https://img.shields.io/badge/phases-24-16A34A?style=flat-square">
</p>

<p align="center">
  Kestara is a Claude Code agent framework for building WordPress websites — from a blank folder to a
  verified production deployment — using a structured 24-phase methodology called
  <strong>AI-DLC (AI Development Lifecycle)</strong>.
</p>

---

### Contents

- [Why this exists](#why-this-exists)
- [Quick start](#quick-start)
- [The AI-DLC lifecycle](#the-ai-dlc-lifecycle)
- [Repository structure](#repository-structure)
- [Brand & color palette](#brand--color-palette)
- [What Kestara will never do](#what-kestara-will-never-do)
- [License](#license)
- [Contributing](#contributing)

---

This repository is not a WordPress theme or plugin. It's the **process, the questions, the guardrails, and
the documentation scaffolding** that Claude Code follows when you clone this repo and start working. Kestara
never starts by writing code — it starts by asking what you're building, inspecting what already exists, and
getting your approval at defined gates before moving forward.

## Why this exists

Most AI coding tools generate code before anyone has agreed on requirements, stack, or design. That produces
duplicated components, undocumented decisions, and a QA pass at the end that has to absorb every problem the
process allowed. Kestara refuses to skip phases: discovery precedes requirements, requirements precede
architecture, an approved design precedes implementation, and every phase closes with a report — and now a
short **✅ phase-complete confirmation** — before the next one starts.

## Quick start

1. **Clone this repository** as the starting point for your new WordPress project:
   ```bash
   git clone https://github.com/Inam337/kestara-wordpress-agent.git my-project
   cd my-project
   ```
2. **Open the folder in Claude Code.** Claude Code automatically loads `CLAUDE.md` from the repo root — that
   file is Kestara's complete operating contract (all 24 phases, every developer question, every approval
   gate).
3. **Start the agent:**
   ```
   /kestara-start
   ```
   Kestara will introduce itself and begin **Phase 00 — Project Initialization**, asking about your project,
   repository, and local environment before touching any code.
4. **Work through the phases.** At each approval gate, Kestara stops and asks for your explicit go-ahead
   before continuing. Use `/kestara-status` anytime to see the current phase and what's still open, and
   `/kestara-phase-report` to get a structured summary of a completed phase.
5. **Keep going to production.** The same methodology carries through design, WordPress foundation, content
   architecture, plugins, theme, pages, CMS, SEO, accessibility, QA, performance, security, deployment, and
   post-launch maintenance.

## The AI-DLC lifecycle

```text
00 Project Initialization   09 Design System          18 Security
01 Discovery                10 Global Components       19 Final QA
02 Requirements              11 Page Development         20 Deployment
03 Technical Decisions       12 ACF / CMS Development    21 Production Verification
04 Design Handoff            13 SEO                       22 Documentation
05 WordPress Foundation      14 Responsive QA             23 Maintenance
06 Content & DB Architecture 15 Accessibility
07 Plugin Architecture        16 Cross-Browser QA
08 Theme Architecture         17 Performance
```

Every phase produces: Objective → Inputs → Developer Questions → Analysis → Decisions → Approval Gate →
Implementation → Validation → Documentation → Phase Report → **Phase Complete** → Next Phase.

## Repository structure

```text
kestara-wordpress-agent/
├── CLAUDE.md              # Kestara's full operating contract (Claude Code loads this automatically)
├── AGENTS.md              # the same contract, mirrored for other AI coding tools
├── .claude/
│   ├── agents/            # a subagent embodying the same persona, for delegated phase work
│   └── commands/          # /kestara-start, /kestara-status, /kestara-phase-report, /kestara-next-phase
├── .github/
│   ├── assets/            # logo (light/dark) + color-palette swatches used in this README
│   ├── workflows/         # CI that checks required docs exist
│   └── ISSUE_TEMPLATE/, PULL_REQUEST_TEMPLATE.md
├── docs/                  # every phase deliverable lives here, pre-seeded as real templates:
│   ├── ai-dlc/            #   phase-status.md is the live "what phase are we in" tracker
│   ├── architecture/, wordpress/, design/, pages/, acf/, seo/, testing/, performance/,
│   └── security/, deployment/
├── templates/             # blank templates (phase report, requirement, acceptance criteria, ...)
├── examples/              # a worked example of a completed phase doc
└── scripts/               # validation, setup, and deployment-checklist helper scripts
```

## Brand & color palette

This follows Kestara's approved Design System (v1) handoff. The mark is a geometric kestrel: swept wings, a
copper-amber precision sliver, and a forward silhouette whose trajectory reads upward — minimum size 24px
tall, clear space equal to the mark's height. Logo files live in `.github/assets/` as plain SVG, light and
dark variants, wired into this README through a `<picture>` element so they follow the viewer's OS theme.

**Core palette**

| Swatch | Name | Hex | Used for |
|---|---|---|---|
| <img src=".github/assets/palette/deep-graphite.svg" width="40" height="20" alt="Deep Graphite swatch"> | **Deep Graphite** | `#111827` | Primary. Headers, hero, footer, dark sections. |
| <img src=".github/assets/palette/midnight.svg" width="40" height="20" alt="Midnight swatch"> | **Midnight** | `#080D16` | Primary dark. Gradient base, footer ground. |
| <img src=".github/assets/palette/kestrel-blue.svg" width="40" height="20" alt="Kestrel Blue swatch"> | **Kestrel Blue** | `#2563EB` | Secondary. Buttons, links, active states, workflow lines. |
| <img src=".github/assets/palette/copper-gold.svg" width="40" height="20" alt="Copper Gold swatch"> | **Copper Gold** | `#D97706` | Accent. Eyebrows, milestones, precision details. |
| <img src=".github/assets/palette/kestrel-amber.svg" width="40" height="20" alt="Kestrel Amber swatch"> | **Kestrel Amber** | `#F59E0B` | Accent light. Logo sliver, highlights, hover details. |
| <img src=".github/assets/palette/cloud-white.svg" width="40" height="20" alt="Cloud White swatch"> | **Cloud White** | `#F8FAFC` | Background. Main page and content sections. |
| <img src=".github/assets/palette/slate.svg" width="40" height="20" alt="Slate swatch"> | **Slate** | `#64748B` | Muted text, secondary labels, meta. |

Copper stays a precision accent — logo details, milestones, key highlights — never the dominant color. Usage
balance across a page: **60%** Cloud White, **25%** Deep Graphite, **10%** Kestrel Blue, **5%** Amber/Copper.

**Typography**

Montserrat carries every heading and body copy — modern, clean, technical. JetBrains Mono is reserved for
eyebrows, phase numbers, metrics, and anything that should read as machine output (this README's fenced code
blocks already render in a monospace face on GitHub, which lines up with that intent).

## What Kestara will never do

- Start coding before understanding the project.
- Invent requirements, design, credentials, APIs, content, plugins, or infrastructure.
- Install a plugin without walking through the plugin decision matrix and getting your approval.
- Skip inspection of an existing site before modifying it.
- Deploy or touch production without explicit approval.
- Declare a phase complete without evidence (see `CLAUDE.md` §37, "Definition of Done").

## License

[MIT](./LICENSE) — see `LICENSE` for details.

## Contributing

See [`CONTRIBUTING.md`](./CONTRIBUTING.md) for the branching/PR workflow, and
[`SECURITY.md`](./SECURITY.md) for how to report vulnerabilities and this repo's secrets policy.
