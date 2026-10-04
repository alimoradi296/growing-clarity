# Contributing

Thanks for improving this package.

## Before you change text

1. Read [docs/english-writing-standards.md](docs/english-writing-standards.md).
2. Keep skills short. Link to the standards document. Do not paste it into skills.
3. Keep examples product-agnostic. Do not add private company data.
4. Prefer one clear change per pull request.

## Suggested change types

| Change | Where |
|---|---|
| Writing policy clarification | `docs/english-writing-standards.md` |
| Skill behavior | `skills/*/SKILL.md` |
| Installer behavior | `scripts/install.sh` |
| Example guide | `examples/` |

## Pull request checklist

1. New English text follows the writing standards.
2. Procedural sentences stay within 20 words when practical.
3. Descriptive sentences stay within 25 words when practical.
4. Skills still link to the standards document.
5. Examples open offline without a build step.

## Local checks

```bash
bash -n scripts/install.sh
python3 scripts/check_example.py
```

## Conduct

Be respectful. Argue about the text, not the person. Keep feedback specific and actionable.
