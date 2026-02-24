# 🧠 Brain

A personal, AI-powered wiki of curated topics — accessible anywhere via GitHub Pages.

## Live Site

[https://seriousd6.github.io/Brain](https://seriousd6.github.io/Brain)

## Structure

```
Brain/
├── _config.yml          # Jekyll + GitHub Pages configuration
├── index.md             # Wiki home page
├── _tech/               # Programming, tools, and engineering notes
├── _notes/              # General learning notes and references
├── _ideas/              # Project ideas and brainstorming
└── assets/css/          # Custom style overrides
```

## Adding a New Page

Create a Markdown file in the relevant section folder:

```bash
_tech/my-topic.md
_notes/my-note.md
_ideas/my-idea.md
```

Each file must start with Jekyll front matter:

```yaml
---
title: "My Topic"
date: YYYY-MM-DD
tags: [tag1, tag2]
---
```

## Local Development

```bash
bundle install
bundle exec jekyll serve
```

Then open [http://localhost:4000/Brain](http://localhost:4000/Brain).

## Deployment

Push to the `main` branch — GitHub Pages builds and publishes automatically.
