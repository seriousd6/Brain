# guidelines.md

> This file defines the formatting, structure, and linking conventions for this knowledge base.
> When generating or editing articles, always adhere to these rules.

---

## Purpose

This is a personal technical knowledge base made of atomic Markdown articles. Each article:
- Covers **one concept** thoroughly
- Links to related concepts rather than re-explaining them
- Is written to be useful both for **human reference** and **re-ingestion into AI context**

---

## File Naming

- Use **kebab-case** slugs: `jwt-authentication.md`, `react-useeffect.md`
- Names should be short, specific, and searchable
- Avoid version numbers in filenames unless the version difference is substantial (e.g., `python2-vs-python3.md`)

---

## Frontmatter

Every file must begin with YAML frontmatter:

```yaml
---
title: <Human-readable title>
tags: [tag1, tag2, tag3]
related: [slug-one, slug-two]
depth: overview | reference | deep-dive
created: YYYY-MM-DD
updated: YYYY-MM-DD
---
```

**Depth levels:**
- `overview` — conceptual, why it matters, when to use it
- `reference` — syntax, options, parameters, cheat-sheet style
- `deep-dive` — internals, tradeoffs, implementation details

---

## Article Structure

Use this section order. Omit sections that don't apply, but never reorder them.

```
# Title

> One or two sentence summary of what this article covers.

## Related Topics
## Overview
## Core Concepts
## Usage / Examples
## Gotchas & Common Mistakes
## Key Takeaways
## See Also
```

### Section Rules

**Related Topics** — appears at the top, immediately after the summary quote. Contains inline links only:
```md
## Related Topics
[OAuth2](./oauth2.md) · [HTTP Headers](./http-headers.md) · [Sessions](./sessions.md)
```

**Overview** — explain the concept in plain language. No code yet. Assume the reader knows adjacent topics (link to them, don't explain them).

**Core Concepts** — define the essential terms and mechanics. Use a `###` subheader per concept. Use tables for comparisons.

**Usage / Examples** — concrete, runnable code examples with language-tagged fences:
````md
```javascript
// example here
```
````
Always include a brief comment explaining *what* the example demonstrates.

**Gotchas & Common Mistakes** — use a `> ⚠️` blockquote for each:
```md
> ⚠️ **Gotcha:** JWTs are not encrypted by default — only signed. Don't store sensitive data in the payload.
```

**Key Takeaways** — 3–6 bullet points. This is the section most useful for AI re-ingestion as a quick summary.

**See Also** — links to external documentation, RFCs, or canonical sources. Format:
```md
- [Official Docs](https://example.com) — one-line description of what's there
```

---

## Internal Linking

- Always use **relative paths**: `[OAuth2](./oauth2.md)`
- Link on **first meaningful mention** of a concept within an article — not every mention
- If a concept deserves its own article but doesn't exist yet, mark it as a stub link:
  ```md
  [Refresh Tokens](./refresh-tokens.md)<!-- stub -->
  ```
- Never inline-explain a concept that has its own article — link to it instead

### Graph Expansion Markers

When writing an article, mark concepts that should become future articles using this pattern:

```md
**[→ needs article: concept-slug]**
```

This creates a scannable queue of articles to generate next.

---

## Formatting Rules

| Element | Rule |
|---|---|
| Headings | `#` for title only. `##` for top-level sections. `###` for subsections. Never skip levels. |
| Bold | Use for **key terms on first definition** and warning callouts. Don't overuse. |
| Italics | Use for *emphasis* or to introduce an *alternate name* for a concept. |
| Inline code | Use for any `code`, `filename`, `command`, or `key: value`. |
| Code blocks | Always include a language identifier: ` ```python `, ` ```bash `, etc. |
| Tables | Prefer for comparisons. Keep column count ≤ 5. |
| Lists | Use bullet lists for non-ordered items, numbered lists for steps only. |
| Horizontal rule | Use `---` to separate major structural breaks only. |

---

## Tone & Style

- Write in **second person** where instructional ("you configure this by…"), otherwise neutral third person
- Prefer **concrete over abstract** — always follow a definition with an example
- **No filler** — omit "In this article we will…" style preambles
- Assume the reader is a competent developer — don't over-explain, but do explain the non-obvious
- Opinions and tradeoff judgments are welcome and useful — label them clearly:
  ```md
  > 💡 **Opinion:** Prefer X over Y in production because...
  ```

---

## AI Prompt Conventions

When using this file as context for AI-generated articles, prepend your request with:

```
Use guidelines.md conventions. Generate a [depth: overview | reference | deep-dive] article on [topic].
Suggest a filename. Mark any concepts that need their own articles with [→ needs article: slug].
```

When re-feeding existing articles as context:

```
The following articles are from my knowledge base. Use their style, links, and depth as reference.
Do not re-explain concepts that already have a linked article — link to them instead.
---
[paste relevant .md files]
---
```

---

## What Makes a Good Article

A well-formed article in this knowledge base should:

- [ ] Have complete frontmatter
- [ ] Open with a one-line summary
- [ ] Link to at least one related article
- [ ] Contain at least one code example (if the topic involves code)
- [ ] Call out at least one gotcha
- [ ] End with Key Takeaways that stand alone as a summary
- [ ] Use no unexplained jargon — either link to it or define it
