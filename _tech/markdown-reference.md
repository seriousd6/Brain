---
title: "Markdown Reference"
date: 2026-02-24
tags: [markdown, writing, tools]
---

# Markdown Reference

A reference for writing Markdown in this wiki.

## Headings

```markdown
# H1
## H2
### H3
```

## Emphasis

```markdown
**bold**, *italic*, ~~strikethrough~~, `inline code`
```

## Lists

```markdown
- Unordered item
- Another item
  - Nested item

1. Ordered item
2. Another item
```

## Links & Images

```markdown
[Link text](https://example.com)
![Alt text](path/to/image.png)
```

## Tables

```markdown
| Header | Header |
|--------|--------|
| Cell   | Cell   |
```

## Code Blocks

````markdown
```python
def hello():
    print("Hello, World!")
```
````

## Front Matter (wiki pages)

Every page in this wiki should start with YAML front matter:

```yaml
---
title: "Page Title"
date: YYYY-MM-DD
tags: [tag1, tag2]
---
```
