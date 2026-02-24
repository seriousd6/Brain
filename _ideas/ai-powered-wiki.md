---
title: "AI-Powered Personal Wiki"
date: 2026-02-24
tags: [project, ai, wiki, github-pages]
---

# AI-Powered Personal Wiki

## Overview

Build a personal wiki that is:
- Stored in a GitHub repository
- Published via GitHub Pages (this project!)
- Searchable and well-organized
- Augmented by AI summaries or tag suggestions

## Goals

- [ ] Set up Jekyll + GitHub Pages structure
- [ ] Create topic sections: Tech, Notes, Ideas
- [ ] Add full-text search (e.g., lunr.js)
- [ ] Add AI-powered tag suggestions on new pages
- [ ] Add a graph view of linked notes (like Obsidian)

## Potential Tools

| Tool | Purpose |
|------|---------|
| Jekyll | Static site generation |
| GitHub Pages | Free hosting |
| lunr.js | Client-side search |
| Obsidian | Local editing with graph view |
| ChatGPT / Copilot | AI-powered content suggestions |

## Notes

- Pages are written in Markdown, stored in `_tech/`, `_notes/`, or `_ideas/`.
- GitHub Actions can be used to auto-deploy on push to `main`.
- A custom domain can be configured in repository settings.

## Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [GitHub Pages Docs](https://docs.github.com/en/pages)
- [Zettelkasten Introduction](https://zettelkasten.de/introduction/)
