---
title: Knowledge Base
layout: default
permalink: /kb/
---

# Knowledge Base

This is the landing page for the knowledge base.

{% assign kb_pages = site.pages | where_exp: "p", "p.path contains 'kb/'" %}
{% assign kb_pages = kb_pages | where_exp: "p", "p.name != 'index.md'" | sort: "title" %}

{% if kb_pages.size == 0 %}
_No articles yet. Add Markdown files into `kb/` following `guidelines.md`._
{% else %}
## Articles
<ul>
  {% for p in kb_pages %}
    <li><a href="{{ p.url | relative_url }}">{{ p.title | default: p.name }}</a></li>
  {% endfor %}
</ul>
{% endif %}