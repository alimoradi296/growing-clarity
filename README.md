# Clean English Skills

Portable writing standards and agent skills for clear English documentation and interactive HTML guides.

Use this repository when you want agents and teammates to write clear docs, avoid AI filler, and ship small offline HTML learning pages.

## What you get

| Path | Purpose |
|---|---|
| [`docs/english-writing-standards.md`](docs/english-writing-standards.md) | Canonical English writing policy |
| [`skills/clean-english/`](skills/clean-english/) | Skill that applies the writing policy |
| [`skills/interactive-html/`](skills/interactive-html/) | Skill that builds accessible interactive HTML guides |
| [`examples/interactive-html/`](examples/interactive-html/) | Minimal sample guide |
| [`scripts/install.sh`](scripts/install.sh) | Copy skills into another project |

## Writing standards in one line

Active voice, consistent terms, short sentences, clear evidence labels, and no hype.

The full policy combines:

- Google Developer Documentation Style Guide
- ASD-STE100-derived precision
- Zinsser's clarity, simplicity, brevity, and humanity

These are derived rules. They are not a claim of certified ASD-STE100 compliance.

## Install

### Option A — copy into a project

```bash
git clone https://github.com/alimoradi296/clean-english-skills.git
cd clean-english-skills
./scripts/install.sh /path/to/your-project
```

The script copies skills into:

- `your-project/.agents/skills/`
- `your-project/.cursor/skills/` as symlinks when that folder exists or can be created

Then add this block to the project `AGENTS.md` or equivalent agent instructions:

```md
## English writing standards

Follow `docs/english-writing-standards.md` from Clean English Skills.
Skills must refer to that document instead of copying it.
```

### Option B — manual copy

1. Copy `docs/english-writing-standards.md` into your docs tree.
2. Copy `skills/clean-english` and `skills/interactive-html` into `.agents/skills/`.
3. For Cursor, symlink them under `.cursor/skills/`.
4. Point project agent instructions at the standards document.

### Option C — use as a reference repo

Keep this repository nearby. Tell your agent:

```text
Use clean-english-skills/docs/english-writing-standards.md
and the skills under clean-english-skills/skills/.
```

## Quick start for agents

### Rewrite text

```text
/clean-english
Rewrite this README for a tired non-native reader.
```

### Build a learning page

```text
/interactive-html
Create docs/interactive-learning/topic-guide.html that teaches X.
```

## Example

Open the sample guide in a browser:

```bash
xdg-open examples/interactive-html/sample-learning-guide.html
```

## Design choices

- Skills stay short and link to one writing policy.
- HTML guides stay self-contained so they work offline.
- Evidence, interpretation, proposals, and decisions stay labeled.
- The package stays product-agnostic so you can copy it into any repo.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

[MIT](LICENSE)

## Maintainer

Ali Moradi ([@alimoradi296](https://github.com/alimoradi296))
