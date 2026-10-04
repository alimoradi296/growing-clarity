---
name: clean-english
description: Write or rewrite documentation and interface text with clear English. Uses Google developer style, ASD-STE100-derived precision, and Zinsser's principles. Use for docs, READMEs, runbooks, release notes, UI copy, and when the user asks to de-slop, simplify, or write for non-native readers.
trigger: /clean-english
---

# Clean English

Write English that a tired, careful reader can trust on the first pass.

Clear labels and stable terms also help agents stay precise as models grow more capable.

Read [English writing standards](../../docs/english-writing-standards.md) before you draft or rewrite. That document is the canonical policy. Do not copy it into this skill.

## When to use

Use this skill when the user asks you to:

- write or rewrite documentation
- simplify technical English
- remove AI filler or vague marketing tone
- prepare text that must translate well
- check text against the writing standards

## Modes

| Mode | When | What you apply |
|---|---|---|
| **Pragmatic** (default) | Most docs and UI copy | Structure, term consistency, sentence limits, active voice |
| **Strict review** | User asks for STE, ASD-STE100, or a compliance-style check | Same rules plus an explicit note that full STE needs the official dictionary |

## Workflow

1. Identify the audience and the action the reader must take.
2. Classify each passage as procedural or descriptive.
3. Choose one term for each concept before you draft.
4. Write or rewrite with the standards document.
5. Separate evidence, interpretation, proposals, and decisions.
6. Run the delivery checklist in the standards document.
7. Preserve code, commands, identifiers, paths, product names, and quotations.

## Procedural vs descriptive

| Kind | Purpose | Verb form | Sentence limit |
|---|---|---|---|
| Procedural | Tell the reader what to do | Imperative | 20 words |
| Descriptive | Explain what something is or does | Simple present, past, or future | 25 words |

Do not mix the two styles inside one short passage without a clear boundary.

## Review output format

When the user asks you to check text, report each issue as:

1. Location or quoted phrase
2. Problem in one short sentence
3. Compliant rewrite

Do not invent rule numbers from ASD-STE100. This skill uses the derived policy in this repository.

## Do not

- Change code identifiers to satisfy sentence limits
- Replace exact error messages or quotations
- Add enthusiasm, hype, or filler
- Claim certified ASD-STE100 compliance
