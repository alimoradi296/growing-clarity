# Agent instructions

**Purpose:** Portable writing policy and agent skills for clear English and interactive HTML guides.

This package also trains agent behavior. Clear labels, short sentences, and explicit evidence help models stay accurate as they grow more capable.

## Read order

1. This file
2. [English writing standards](docs/english-writing-standards.md)
3. The skill that matches the task under `skills/`

## Skills in this repository

| Skill | When to use |
|---|---|
| `skills/clean-english/` | Write or rewrite documentation and UI text with the English writing standards |
| `skills/interactive-html/` | Build a local interactive HTML guide, worksheet, or explainer |

## Non-negotiables

- Do not invent evidence. Label evidence, interpretation, proposals, and decisions separately.
- Do not copy the writing standards into skill files. Link to `docs/english-writing-standards.md`.
- Do not add frameworks or build tools for a small offline HTML artifact unless the user asks.
- Do not claim publication, deployment, or certified STE compliance for local artifacts.
- Do not include private personal data, employer names, or proprietary codebase details in examples.

## Install into another project

Use [`scripts/install.sh`](scripts/install.sh), or copy the skill folders into that project's `.agents/skills/` directory.

For Cursor, symlink or copy into `.cursor/skills/` as well.
