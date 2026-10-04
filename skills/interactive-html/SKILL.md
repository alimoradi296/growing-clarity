---
name: interactive-html
description: Create or revise local interactive HTML guides, meeting worksheets, explainers, learning pages, and presentations with clear English, accessible controls, responsive layouts, and reliable state handling. Use for standalone HTML artifacts; use the existing project workflow for production application features.
trigger: /interactive-html
---

# Interactive HTML

Create an HTML artifact that helps the reader understand, compare, or complete a task.

Read [English writing standards](../../docs/english-writing-standards.md) before writing English content. That document is the canonical writing policy. Do not copy it into this skill.

## Choose the useful interaction

Identify the reader, task, source material, and expected output. Infer routine choices from the request and existing artifacts.

Choose interactions that serve the task:

| Reader task | Useful interaction |
|---|---|
| Learn a topic or decision trail | Section navigation, before/after comparison, self-check questions |
| Prepare and conduct a meeting | Phase navigation, checklists, responsibility fields, and draft-note export |
| Compare options | Consistent comparison dimensions and controls that expose tradeoffs |
| Understand a process | Selectable steps with inputs, outputs, owners, and dependencies |
| Explore a quantitative relationship | Bounded inputs, visible units, assumptions, and a result that updates |
| Present to a group | Slide controls, a progress indicator, and a printable view |

Use the interactions the artifact needs. Do not add a checklist, timer, chart, or export merely because another artifact used it.

## Prefer portable locations

| Artifact kind | Default location |
|---|---|
| Learning guides | `docs/interactive-learning/` or `examples/` |
| Meeting worksheets | Project dossier or `docs/` folder named by the user |
| Source of truth docs | Link to existing markdown; do not replace it with HTML |

Deliver the local file path. Do not claim the guide is published, hosted, or shipped with a product unless the user asks for that step.

## Build the artifact

Prefer one self-contained `.html` file for a local guide. Inline CSS and JavaScript when the file needs to work offline.

Use existing design conventions when supplied. Otherwise choose readable typography, a clear hierarchy, restrained colors, and sufficient spacing. Avoid purple-on-white themes, glow effects, and decorative card stacks that hide the learning path.

Use native HTML controls before custom widgets. A small artifact rarely needs a framework, external fonts, or a build pipeline.

If the user requests replacement of an existing artifact, update its links and preserve any unique source evidence.

Keep reported evidence, inferred explanations, proposed assignments, and actual agreements visibly distinct. Empty fields are not agreed responsibilities.

Label proposed owners and deadlines as **proposed** until participants confirm them.

Keep implementation details out of the reader's workflow unless they explain a meaningful choice or limitation.

## Make the artifact accessible and responsive

- Use semantic headings, landmarks, and table headers.
- Label each input. Use visible labels where space permits.
- Keep controls keyboard accessible, with visible focus and clear selected states.
- Use readable text contrast. Pair color with text or another visible indicator.
- Announce save, import, and export results without moving focus unexpectedly.
- Keep the page usable at narrow widths. Put wide tables inside their own scroll containers.
- Preserve source-language prompts with appropriate `lang` and direction attributes.
- If navigation replaces a long section, position the new section so its start remains visible.

## Handle state when the artifact collects entries

For disposable controls, persistence can be unnecessary. For worksheets or self-check progress, retain entries unless the user requests otherwise.

Use a storage key specific to the artifact and a versioned data structure. Handle unavailable storage without losing the current in-memory entries.

Tell the reader where entries save. Browser storage is local to that browser. It does not write into the HTML file or sync to a wiki.

Provide a portable backup when entries matter. Validate imported data before replacing current state.

If an import replaces existing entries, explain the replacement and request confirmation within the interface.

Render entered text with safe text or value APIs. Do not interpret it as HTML or executable code.

Export all relevant worksheet fields, added rows, and notes. Preserve multilingual text and escape delimiters in structured output.

Label exported notes as a draft until the participants review them. Keep preparation material separate from formal minutes.

## Support printing when useful

Show relevant sections in print, including sections hidden by navigation. Expand required detail panels and include entered text.

Remove navigation and editing controls from print. Keep headings, evidence labels, and responsibility information readable.

When printing ends, restore the prior screen state.

## Check and deliver

Always check HTML structure, duplicate IDs, local links, JavaScript syntax, and the writing policy.

Scale runtime checks to the actual interactions. For a learning guide, check navigation, self-check scoring, reload persistence when used, and narrow-screen overflow.

Check print behavior when supplied. Do not claim that static checks prove layout, persistence, or browser behavior.

Honor the user's testing constraints. Browser checks are useful when permitted and available. Playwright is not required.

Use existing tools without adding dependencies solely for a small artifact. Report omitted browser checks plainly.

Deliver a clickable file link and state what works, what you checked, and any material limits.

Follow the host repository rules for commits, pushes, wiki changes, and hosting. Do not commit unless the user asks.

## Privacy for public examples

Do not put private personal data, employer names, or proprietary codebase details into shared examples.
Keep sample content generic.
