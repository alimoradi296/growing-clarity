---
name: interactive-html
description: Create or revise local interactive HTML guides, meeting worksheets, explainers, learning pages, and presentations with clear English, diagrams, accessible controls, responsive layouts, and reliable state handling. Teach prerequisite concepts when the topic needs them. Use for standalone HTML artifacts; use the existing project workflow for production application features.
trigger: /interactive-html
---

# Interactive HTML

Create an HTML artifact that helps the reader understand, compare, practice, or complete a task.

Read [English writing standards](../../docs/english-writing-standards.md) before writing English content. That document is the canonical writing policy. Do not copy it into this skill.

As AI tools grow, these guides should help the reader grow too. Prefer learning by interaction and diagrams over long uninterrupted prose.

## Choose the useful interaction

Identify the reader, task, source material, and expected output. Infer routine choices from the request and existing artifacts.

Choose interactions that serve the task:

| Reader task | Useful interaction |
|---|---|
| Learn a topic or decision trail | Section navigation, diagrams, before/after comparison, self-check questions |
| Learn a new concept required by the topic | Concept cards, notation legend, tiny examples, mini-checks |
| Prepare and conduct a meeting | Phase navigation, checklists, responsibility fields, and draft-note export |
| Compare options | Consistent comparison dimensions, comparison diagrams, and controls that expose tradeoffs |
| Understand a process | Flow or sequence diagram plus selectable steps with inputs, outputs, owners, and dependencies |
| Explore a quantitative relationship | Bounded inputs, visible units, assumptions, and a result that updates |
| Present to a group | Slide controls, a progress indicator, diagrams, and a printable view |

Use the interactions the artifact needs. Do not add a checklist, timer, chart, diagram, or export merely because another artifact used it.

## Add diagrams where they help

Use a diagram when relationships, order, or structure matter more than prose. Skip diagrams that only decorate the page.

Choose the diagram type that matches the question:

| Reader needs to see | Diagram type | Prefer when |
|---|---|---|
| Steps and branches | Flowchart | Decisions, remediation paths, install steps |
| Who talks to whom over time | Sequence diagram | Request flows, handoffs, async jobs |
| Parts and ownership | Component / container diagram | System or module boundaries |
| Data shape and links | Entity-relationship or object map | Models, tables, domain objects |
| Modes and transitions | State diagram | Status machines, lifecycle |
| Same idea across options | Comparison diagram or matrix | Tradeoffs side by side |
| Cause then effect | Cause-effect or fishbone | Incident or root-cause teaching |
| Time order | Timeline | Releases, evidence chronology |
| Parallel roles | Swimlane | Process ownership across teams |
| Concept clusters | Concept map | Vocabulary before a hard topic |

### How to render diagrams in the HTML guide

Prefer offline-first rendering:

1. **Inline SVG** for most teaching diagrams. Keep labels readable. Add a short title above the figure.
2. **Semantic HTML + CSS** for simple flow or comparison layouts when SVG is unnecessary.
3. **Mermaid or another CDN renderer** only when the user allows network use and wants editable source text.
4. **ASCII or table fallback** when the diagram must remain readable in plain text or print constraints are strict.

For every diagram:

- Give it a visible title and a one-sentence purpose.
- Provide a text alternative: short summary under the figure, or a collapsible "Read as text" list of nodes and edges.
- Keep node labels short. Put detail in the surrounding teaching text.
- Highlight the current step when the diagram supports process navigation.
- Make the figure scroll horizontally on narrow screens instead of shrinking text below readable size.
- Preserve print readability: black/gray strokes, no reliance on hover-only detail.

Do not add a diagram library build step for a small local guide unless the user asks.

## Teach new concepts the diagram or topic requires

If the guide uses a term, pattern, or diagram type the reader may not know, teach it before or beside the hard material.

Add a **Concepts you need** block when any of these are true:

- the diagram introduces unfamiliar symbols or notation
- the topic depends on a prerequisite idea
- the self-check would otherwise test vocabulary the guide never explained

For each new concept, include:

1. Name
2. Plain definition in one or two short sentences
3. Why it matters in this guide
4. One tiny example
5. Optional mini-check: one question or "show me" control

Keep concept teaching progressive:

| Stage | What to show |
|---|---|
| Preview | Concept cards before the main diagram |
| In place | Hotspots, expandable notes, or selectable nodes on the diagram |
| Practice | Self-check that uses the new terms |
| Recap | Short list of concepts the reader should now recognize |

Do not assume prior knowledge of flowchart notation, sequence participants, cardinality, state transitions, or domain jargon. If the guide needs that idea, teach it.

When you introduce a diagram type for the first time in the page, explain the notation in one short panel. Example: "Boxes are steps. Diamonds are decisions. Arrows show order."

## Prefer portable locations

| Artifact kind | Default location |
|---|---|
| Learning guides | `docs/interactive-learning/` or `examples/` |
| Meeting worksheets | Project dossier or `docs/` folder named by the user |
| Source of truth docs | Link to existing markdown; do not replace it with HTML |

Deliver the local file path. Do not claim the guide is published, hosted, or shipped with a product unless the user asks for that step.

## Build the artifact

Prefer one self-contained `.html` file for a local guide. Inline CSS, JavaScript, and SVG when the file needs to work offline.

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
- Give each diagram a title and a text alternative.
- Announce save, import, and export results without moving focus unexpectedly.
- Keep the page usable at narrow widths. Put wide tables and diagrams inside their own scroll containers.
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

Show relevant sections in print, including sections hidden by navigation. Expand required detail panels and include entered text and diagram text alternatives.

Remove navigation and editing controls from print. Keep headings, evidence labels, diagrams, and responsibility information readable.

When printing ends, restore the prior screen state.

## Check and deliver

Always check HTML structure, duplicate IDs, local links, JavaScript syntax, diagram text alternatives, and the writing policy.

Scale runtime checks to the actual interactions. For a learning guide, check navigation, diagram visibility, concept panels, self-check scoring, reload persistence when used, and narrow-screen overflow.

Check print behavior when supplied. Do not claim that static checks prove layout, persistence, or browser behavior.

Honor the user's testing constraints. Browser checks are useful when permitted and available. Playwright is not required.

Use existing tools without adding dependencies solely for a small artifact. Report omitted browser checks plainly.

Deliver a clickable file link and state what works, what you checked, and any material limits.

Follow the host repository rules for commits, pushes, wiki changes, and hosting. Do not commit unless the user asks.

## Privacy for public examples

Do not put private personal data, employer names, or proprietary codebase details into shared examples.
Keep sample content generic.
