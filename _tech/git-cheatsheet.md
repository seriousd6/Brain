---
title: "Git Cheatsheet"
date: 2026-02-24
tags: [git, version-control, tools]
---

# Git Cheatsheet

A quick reference for everyday Git commands.

## Setup

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

## Common Commands

| Command | Description |
|---------|-------------|
| `git init` | Initialize a new repository |
| `git clone <url>` | Clone a remote repository |
| `git status` | Show working tree status |
| `git add .` | Stage all changes |
| `git commit -m "message"` | Commit staged changes |
| `git push` | Push commits to remote |
| `git pull` | Fetch and merge from remote |

## Branching

```bash
git branch my-feature      # create branch
git checkout my-feature    # switch to branch
git checkout -b my-feature # create and switch
git merge my-feature       # merge into current branch
git branch -d my-feature   # delete branch
```

## Undoing Changes

```bash
git restore <file>         # discard working tree changes
git reset HEAD <file>      # unstage a file
git revert <commit>        # create a revert commit
```
